// Generate a 6-character alphanumeric booking code from a string seed
export function generateBookingCode(seed: string): string {
    const chars = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    let hash = 0;
    for (let i = 0; i < seed.length; i++) {
        hash = seed.charCodeAt(i) + ((hash << 5) - hash);
    }
    let code = '';
    for (let i = 0; i < 6; i++) {
        code += chars.charAt(Math.abs((hash + i) % chars.length));
    }
    return code;
} 