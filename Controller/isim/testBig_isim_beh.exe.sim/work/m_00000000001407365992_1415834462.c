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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//psf/Home/Documents/Controller/InterruptManager.v";
static unsigned int ng1[] = {31U, 0U};
static int ng2[] = {3, 0};
static int ng3[] = {0, 0};
static unsigned int ng4[] = {144U, 0U};
static int ng5[] = {2, 0};
static unsigned int ng6[] = {0U, 0U};
static int ng7[] = {1, 0};



static void Cont_40_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t18[8];
    char t20[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;

LAB0:    t1 = (t0 + 3920U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1960U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t21 = *((unsigned int *)t4);
    t22 = (~(t21));
    t23 = *((unsigned int *)t12);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t25, 8);

LAB16:    t26 = (t0 + 5112);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memset(t30, 0, 8);
    t31 = 127U;
    t32 = t31;
    t33 = (t3 + 4);
    t34 = *((unsigned int *)t3);
    t31 = (t31 & t34);
    t35 = *((unsigned int *)t33);
    t32 = (t32 & t35);
    t36 = (t30 + 4);
    t37 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t37 | t31);
    t38 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t38 | t32);
    xsi_driver_vfirst_trans(t26, 0, 6);
    t39 = (t0 + 4984);
    *((int *)t39) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = (t0 + 1800U);
    t17 = *((char **)t16);
    t16 = ((char*)((ng1)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_minus(t18, 32, t17, 10, t16, 10);
    t19 = ((char*)((ng2)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_rshift(t20, 32, t18, 32, t19, 32);
    goto LAB9;

LAB10:    t25 = ((char*)((ng3)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t20, 32, t25, 32);
    goto LAB16;

LAB14:    memcpy(t3, t20, 8);
    goto LAB16;

}

static void Cont_42_1(char *t0)
{
    char t3[8];
    char t4[8];
    char t18[8];
    char t20[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    char *t19;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned int t34;
    unsigned int t35;
    char *t36;
    unsigned int t37;
    unsigned int t38;
    char *t39;

LAB0:    t1 = (t0 + 4168U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1960U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t21 = *((unsigned int *)t4);
    t22 = (~(t21));
    t23 = *((unsigned int *)t12);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t25, 8);

LAB16:    t26 = (t0 + 5176);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memset(t30, 0, 8);
    t31 = 127U;
    t32 = t31;
    t33 = (t3 + 4);
    t34 = *((unsigned int *)t3);
    t31 = (t31 & t34);
    t35 = *((unsigned int *)t33);
    t32 = (t32 & t35);
    t36 = (t30 + 4);
    t37 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t37 | t31);
    t38 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t38 | t32);
    xsi_driver_vfirst_trans(t26, 0, 6);
    t39 = (t0 + 5000);
    *((int *)t39) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = (t0 + 1640U);
    t17 = *((char **)t16);
    t16 = ((char*)((ng4)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_minus(t18, 32, t17, 10, t16, 10);
    t19 = ((char*)((ng2)));
    memset(t20, 0, 8);
    xsi_vlog_unsigned_rshift(t20, 32, t18, 32, t19, 32);
    goto LAB9;

LAB10:    t25 = ((char*)((ng3)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t20, 32, t25, 32);
    goto LAB16;

LAB14:    memcpy(t3, t20, 8);
    goto LAB16;

}

static void Cont_44_2(char *t0)
{
    char t3[8];
    char t4[8];
    char t18[8];
    char *t1;
    char *t2;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    char *t17;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;
    char *t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    char *t37;

LAB0:    t1 = (t0 + 4416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1960U);
    t5 = *((char **)t2);
    memset(t4, 0, 8);
    t2 = (t5 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 & 1U);
    if (t10 != 0)
        goto LAB4;

LAB5:    if (*((unsigned int *)t2) != 0)
        goto LAB6;

LAB7:    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t12);
    t15 = (t13 || t14);
    if (t15 > 0)
        goto LAB8;

LAB9:    t19 = *((unsigned int *)t4);
    t20 = (~(t19));
    t21 = *((unsigned int *)t12);
    t22 = (t20 || t21);
    if (t22 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t23, 8);

LAB16:    t24 = (t0 + 5240);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    memset(t28, 0, 8);
    t29 = 127U;
    t30 = t29;
    t31 = (t3 + 4);
    t32 = *((unsigned int *)t3);
    t29 = (t29 & t32);
    t33 = *((unsigned int *)t31);
    t30 = (t30 & t33);
    t34 = (t28 + 4);
    t35 = *((unsigned int *)t28);
    *((unsigned int *)t28) = (t35 | t29);
    t36 = *((unsigned int *)t34);
    *((unsigned int *)t34) = (t36 | t30);
    xsi_driver_vfirst_trans(t24, 0, 6);
    t37 = (t0 + 5016);
    *((int *)t37) = 1;

LAB1:    return;
LAB4:    *((unsigned int *)t4) = 1;
    goto LAB7;

LAB6:    t11 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB7;

LAB8:    t16 = (t0 + 2280U);
    t17 = *((char **)t16);
    t16 = ((char*)((ng5)));
    memset(t18, 0, 8);
    xsi_vlog_unsigned_lshift(t18, 32, t17, 7, t16, 32);
    goto LAB9;

LAB10:    t23 = ((char*)((ng3)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t18, 32, t23, 32);
    goto LAB16;

LAB14:    memcpy(t3, t18, 8);
    goto LAB16;

}

static void Always_56_3(char *t0)
{
    char t13[8];
    char t16[8];
    char t21[8];
    char t23[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t14;
    char *t15;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    int t30;

LAB0:    t1 = (t0 + 4664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 5032);
    *((int *)t2) = 1;
    t3 = (t0 + 4696);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(57, ng0);

LAB5:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 1480U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1640U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng4)));
    memset(t13, 0, 8);
    t4 = (t3 + 4);
    if (*((unsigned int *)t4) != 0)
        goto LAB10;

LAB9:    t5 = (t2 + 4);
    if (*((unsigned int *)t5) != 0)
        goto LAB10;

LAB13:    if (*((unsigned int *)t3) > *((unsigned int *)t2))
        goto LAB11;

LAB12:    t12 = (t13 + 4);
    t6 = *((unsigned int *)t12);
    t7 = (~(t6));
    t8 = *((unsigned int *)t13);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB14;

LAB15:
LAB16:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(59, ng0);
    t11 = ((char*)((ng6)));
    t12 = (t0 + 3000);
    xsi_vlogvar_wait_assign_value(t12, t11, 0, 0, 4, 0LL);
    goto LAB8;

LAB10:    t11 = (t13 + 4);
    *((unsigned int *)t13) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB12;

LAB11:    *((unsigned int *)t13) = 1;
    goto LAB12;

LAB14:    xsi_set_current_line(61, ng0);

LAB17:    xsi_set_current_line(62, ng0);
    t14 = (t0 + 2600U);
    t15 = *((char **)t14);
    t14 = (t0 + 2560U);
    t17 = (t14 + 72U);
    t18 = *((char **)t17);
    t19 = (t0 + 2440U);
    t20 = *((char **)t19);
    t19 = ((char*)((ng3)));
    memset(t21, 0, 8);
    xsi_vlog_unsigned_add(t21, 32, t20, 7, t19, 32);
    xsi_vlog_generic_get_index_select_value(t16, 1, t15, t18, 2, t21, 32, 2);
    t22 = (t0 + 3000);
    t24 = (t0 + 3000);
    t25 = (t24 + 72U);
    t26 = *((char **)t25);
    t27 = ((char*)((ng3)));
    xsi_vlog_generic_convert_bit_index(t23, t26, 2, t27, 32, 1);
    t28 = (t23 + 4);
    t29 = *((unsigned int *)t28);
    t30 = (!(t29));
    if (t30 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t11 = (t0 + 2440U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng7)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t12, 7, t11, 32);
    xsi_vlog_generic_get_index_select_value(t13, 1, t3, t5, 2, t16, 32, 2);
    t14 = (t0 + 3000);
    t15 = (t0 + 3000);
    t17 = (t15 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t21, t18, 2, t19, 32, 1);
    t20 = (t21 + 4);
    t6 = *((unsigned int *)t20);
    t30 = (!(t6));
    if (t30 == 1)
        goto LAB20;

LAB21:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t11 = (t0 + 2440U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng5)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t12, 7, t11, 32);
    xsi_vlog_generic_get_index_select_value(t13, 1, t3, t5, 2, t16, 32, 2);
    t14 = (t0 + 3000);
    t15 = (t0 + 3000);
    t17 = (t15 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng5)));
    xsi_vlog_generic_convert_bit_index(t21, t18, 2, t19, 32, 1);
    t20 = (t21 + 4);
    t6 = *((unsigned int *)t20);
    t30 = (!(t6));
    if (t30 == 1)
        goto LAB22;

LAB23:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2600U);
    t3 = *((char **)t2);
    t2 = (t0 + 2560U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t11 = (t0 + 2440U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng2)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t12, 7, t11, 32);
    xsi_vlog_generic_get_index_select_value(t13, 1, t3, t5, 2, t16, 32, 2);
    t14 = (t0 + 3000);
    t15 = (t0 + 3000);
    t17 = (t15 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t21, t18, 2, t19, 32, 1);
    t20 = (t21 + 4);
    t6 = *((unsigned int *)t20);
    t30 = (!(t6));
    if (t30 == 1)
        goto LAB24;

LAB25:    goto LAB16;

LAB18:    xsi_vlogvar_wait_assign_value(t22, t16, 0, *((unsigned int *)t23), 1, 0LL);
    goto LAB19;

LAB20:    xsi_vlogvar_wait_assign_value(t14, t13, 0, *((unsigned int *)t21), 1, 0LL);
    goto LAB21;

LAB22:    xsi_vlogvar_wait_assign_value(t14, t13, 0, *((unsigned int *)t21), 1, 0LL);
    goto LAB23;

LAB24:    xsi_vlogvar_wait_assign_value(t14, t13, 0, *((unsigned int *)t21), 1, 0LL);
    goto LAB25;

}


extern void work_m_00000000001407365992_1415834462_init()
{
	static char *pe[] = {(void *)Cont_40_0,(void *)Cont_42_1,(void *)Cont_44_2,(void *)Always_56_3};
	xsi_register_didat("work_m_00000000001407365992_1415834462", "isim/testBig_isim_beh.exe.sim/work/m_00000000001407365992_1415834462.didat");
	xsi_register_executes(pe);
}
