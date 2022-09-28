import { defineConfig } from "vitest/config";

export default defineConfig({
  test: {},
  defineConfig: {
    server: {
      port: 3000,
      host: true,
      strictPort: true,
    },
  },
});
