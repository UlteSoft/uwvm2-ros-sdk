/** @file nim_toplevel.c
 * @brief Enter the genuine Nim module's top-level command after WASI startup.
 * @details NimMain initializes the Nim runtime and executes the application.
 * No application logic, transport or permission is supplied by this bridge.
 */
extern void NimMain(void);
int main(void)
{
    NimMain();
    return 0;
}
