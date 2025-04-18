import { NotFound } from '@app/components/NotFound/NotFound';
import { OriginalApp } from '@app/components/OriginalApp/OriginalApp';
import { useDocumentTitle } from '@app/utils/useDocumentTitle';
import * as React from 'react';
import { Redirect, Route, RouteComponentProps, Switch, useLocation } from 'react-router-dom';
import { ClaimDetail } from './components/ClaimDetail/ClaimDetail';
import { ClaimsList } from './components/ClaimsList/ClaimsList';
// import { EmailGenerate } from './components/EmailGenerate/EmailGenerate';
import { Empty } from './components/Empty/Empty';


let routeFocusTimer: number;
export interface IAppRoute {
  label?: string; // Excluding the label will exclude the route from the nav sidebar in AppLayout
  /* eslint-disable @typescript-eslint/no-explicit-any */
  component: React.ComponentType<RouteComponentProps<any>> | React.ComponentType<any>;
  /* eslint-enable @typescript-eslint/no-explicit-any */
  exact?: boolean;
  path: string;
  title: string;
  routes?: undefined;
  bottomRoutes?: undefined;
  disabled?: boolean;
}

export interface IAppRouteGroup {
  label: string;
  routes: IAppRoute[];
}

export type AppRouteConfig = IAppRoute | IAppRouteGroup;

const routes: AppRouteConfig[] = [
  {
    component: () => <Redirect to="/ClaimsList" />,
    exact: true,
    path: '/',
    title: 'Airline Customer Service Portal',
  },
  {
    component: Empty,
    label: 'Service Overview',
    path: '#',
    title: 'Customer Service Overview'
  },
  {
    component: Empty,
    label: 'Flight Policies',
    path: '#',
    title: 'Airline Policies & Procedures'
  },
  {
    component: ClaimsList,
    exact: true,
    label: 'Customer Cases',
    path: '/ClaimsList',
    title: 'Customer Complaints & Claims',
  },
  {
    component: ClaimDetail,
    exact: true,
    path: '/ClaimDetail/:claim_id',
    title: 'Customer Case Details',
  },
  {
    component: Empty,
    label: 'Travel Insurance',
    path: '#',
    title: 'Travel Insurance & Coverage'
  },
  {
    component: Empty,
    label: 'Loyalty Program',
    path: '#',
    title: 'Loyalty Program Benefits'
  },
  {
    component: Empty,
    label: 'Premium Services',
    path: '#',
    title: 'Premium Services & Subscriptions'
  },
  {
    component: Empty,
    label: 'Service Analytics',
    path: '#',
    title: 'Customer Service Analytics'
  },
  // {
  //   component: EmailGenerate,
  //   exact: true,
  //   label: 'Email Generate',
  //   path: '/EmailGenerate',
  //   title: 'Email Generate'
  // },
  {
    component: Empty,
    label: 'Admin',
    path: '#',
    title: 'Admin'
  },
  {
    component: Empty,
    label: 'Settings',
    path: '#',
    title: 'Settings'
  },
  {
    component: OriginalApp,
    exact: true,
    label: 'Original App',
    path: '/OriginalApp',
    title: 'Original App',
  },
];


// a custom hook for sending focus to the primary content container
// after a view has loaded so that subsequent press of tab key
// sends focus directly to relevant content
// may not be necessary if https://github.com/ReactTraining/react-router/issues/5210 is resolved
const useA11yRouteChange = () => {
  const { pathname } = useLocation();
  React.useEffect(() => {
    routeFocusTimer = window.setTimeout(() => {
      const mainContainer = document.getElementById('primary-app-container');
      if (mainContainer) {
        mainContainer.focus();
      }
    }, 50);
    return () => {
      window.clearTimeout(routeFocusTimer);
    };
  }, [pathname]);
};

const RouteWithTitleUpdates = ({ component: Component, title, ...rest }: IAppRoute) => {
  useA11yRouteChange();
  useDocumentTitle(title);

  function routeWithTitle(routeProps: RouteComponentProps) {
    return <Component {...rest} {...routeProps} />;
  }

  return <Route render={routeWithTitle} {...rest} />;
};

const PageNotFound = ({ title }: { title: string }) => {
  useDocumentTitle(title);
  return <Route component={NotFound} />;
};

const flattenedRoutes: IAppRoute[] = routes.reduce(
  (flattened, route) => [...flattened, ...(route.routes ? route.routes : [route])],
  [] as IAppRoute[]
);

const AppRoutes = (): React.ReactElement => (
  <Switch>
    {flattenedRoutes.map(({ path, exact, component, title }, idx) => (
      <RouteWithTitleUpdates path={path} exact={exact} component={component} key={idx} title={title} />
    ))}
    <PageNotFound title="404 Page Not Found" />
  </Switch>
);

export { AppRoutes, routes };