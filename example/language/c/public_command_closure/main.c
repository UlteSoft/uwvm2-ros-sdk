/* SPDX-License-Identifier: Apache-2.0 */
/* Genuine guest command for public child-project and test dispatch. */
#include <stdio.h>
int main(void)
{
    return puts("sdk-public-child") < 0 ? 1 : 0;
}
