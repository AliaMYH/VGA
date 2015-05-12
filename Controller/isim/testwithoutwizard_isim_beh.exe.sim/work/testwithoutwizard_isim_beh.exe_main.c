/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000002573695860_2992383019_init();
    work_m_00000000002956637933_1393532191_init();
    xilinxcorelib_ver_m_00000000001358910285_2800433350_init();
    xilinxcorelib_ver_m_00000000001687936702_3631622721_init();
    xilinxcorelib_ver_m_00000000000277421008_2786561626_init();
    xilinxcorelib_ver_m_00000000001485706734_3788737086_init();
    work_m_00000000002489990758_2433764194_init();
    work_m_00000000000150983043_1415834462_init();
    xilinxcorelib_ver_m_00000000001358910285_0406668203_init();
    xilinxcorelib_ver_m_00000000001687936702_2105488399_init();
    xilinxcorelib_ver_m_00000000000277421008_2556579005_init();
    xilinxcorelib_ver_m_00000000001485706734_2456914519_init();
    work_m_00000000002489990758_3541488594_init();
    work_m_00000000003276985386_3004989777_init();
    work_m_00000000003544042667_0992056818_init();
    work_m_00000000000905763337_0957316110_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000000905763337_0957316110");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
