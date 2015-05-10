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
static const char *ng0 = "//psf/Home/Documents/Controller/ColorSelector.v";
static unsigned int ng1[] = {31U, 0U};
static unsigned int ng2[] = {7U, 0U};
static unsigned int ng3[] = {6U, 0U};
static unsigned int ng4[] = {144U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {0U, 0U};
static int ng7[] = {0, 0};
static int ng8[] = {1, 0};
static int ng9[] = {2, 0};
static int ng10[] = {3, 0};
static int ng11[] = {4, 0};
static int ng12[] = {5, 0};
static int ng13[] = {6, 0};
static int ng14[] = {7, 0};



static void Cont_48_0(char *t0)
{
    char t3[8];
    char t4[8];
    char t18[8];
    char t20[8];
    char t53[8];
    char t56[8];
    char t58[8];
    char t91[8];
    char t92[8];
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
    char *t24;
    char *t25;
    char *t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    int t44;
    int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned int t51;
    char *t52;
    char *t54;
    char *t55;
    char *t57;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    char *t62;
    char *t63;
    char *t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    char *t72;
    char *t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    int t82;
    int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    char *t90;
    unsigned int t93;
    unsigned int t94;
    unsigned int t95;
    unsigned int t96;
    char *t97;
    char *t98;
    char *t99;
    char *t100;
    char *t101;
    char *t102;
    char *t103;

LAB0:    t1 = (t0 + 4080U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2120U);
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

LAB9:    t93 = *((unsigned int *)t4);
    t94 = (~(t93));
    t95 = *((unsigned int *)t12);
    t96 = (t94 || t95);
    if (t96 > 0)
        goto LAB10;

LAB11:    if (*((unsigned int *)t12) > 0)
        goto LAB12;

LAB13:    if (*((unsigned int *)t4) > 0)
        goto LAB14;

LAB15:    memcpy(t3, t97, 8);

LAB16:    t98 = (t0 + 4744);
    t99 = (t98 + 56U);
    t100 = *((char **)t99);
    t101 = (t100 + 56U);
    t102 = *((char **)t101);
    memcpy(t102, t3, 8);
    xsi_driver_vfirst_trans(t98, 0, 31);
    t103 = (t0 + 4648);
    *((int *)t103) = 1;

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
    t21 = *((unsigned int *)t18);
    t22 = *((unsigned int *)t19);
    t23 = (t21 & t22);
    *((unsigned int *)t20) = t23;
    t24 = (t18 + 4);
    t25 = (t19 + 4);
    t26 = (t20 + 4);
    t27 = *((unsigned int *)t24);
    t28 = *((unsigned int *)t25);
    t29 = (t27 | t28);
    *((unsigned int *)t26) = t29;
    t30 = *((unsigned int *)t26);
    t31 = (t30 != 0);
    if (t31 == 1)
        goto LAB17;

LAB18:
LAB19:    t52 = ((char*)((ng3)));
    memset(t53, 0, 8);
    xsi_vlog_unsigned_lshift(t53, 32, t20, 32, t52, 10);
    t54 = (t0 + 1640U);
    t55 = *((char **)t54);
    t54 = ((char*)((ng4)));
    memset(t56, 0, 8);
    xsi_vlog_unsigned_minus(t56, 32, t55, 10, t54, 10);
    t57 = ((char*)((ng2)));
    t59 = *((unsigned int *)t56);
    t60 = *((unsigned int *)t57);
    t61 = (t59 & t60);
    *((unsigned int *)t58) = t61;
    t62 = (t56 + 4);
    t63 = (t57 + 4);
    t64 = (t58 + 4);
    t65 = *((unsigned int *)t62);
    t66 = *((unsigned int *)t63);
    t67 = (t65 | t66);
    *((unsigned int *)t64) = t67;
    t68 = *((unsigned int *)t64);
    t69 = (t68 != 0);
    if (t69 == 1)
        goto LAB20;

LAB21:
LAB22:    t90 = ((char*)((ng5)));
    memset(t91, 0, 8);
    xsi_vlog_unsigned_lshift(t91, 32, t58, 32, t90, 10);
    memset(t92, 0, 8);
    xsi_vlog_unsigned_add(t92, 32, t53, 32, t91, 32);
    goto LAB9;

LAB10:    t97 = ((char*)((ng6)));
    goto LAB11;

LAB12:    xsi_vlog_unsigned_bit_combine(t3, 32, t92, 32, t97, 32);
    goto LAB16;

LAB14:    memcpy(t3, t92, 8);
    goto LAB16;

LAB17:    t32 = *((unsigned int *)t20);
    t33 = *((unsigned int *)t26);
    *((unsigned int *)t20) = (t32 | t33);
    t34 = (t18 + 4);
    t35 = (t19 + 4);
    t36 = *((unsigned int *)t18);
    t37 = (~(t36));
    t38 = *((unsigned int *)t34);
    t39 = (~(t38));
    t40 = *((unsigned int *)t19);
    t41 = (~(t40));
    t42 = *((unsigned int *)t35);
    t43 = (~(t42));
    t44 = (t37 & t39);
    t45 = (t41 & t43);
    t46 = (~(t44));
    t47 = (~(t45));
    t48 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t48 & t46);
    t49 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t49 & t47);
    t50 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t50 & t46);
    t51 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t51 & t47);
    goto LAB19;

LAB20:    t70 = *((unsigned int *)t58);
    t71 = *((unsigned int *)t64);
    *((unsigned int *)t58) = (t70 | t71);
    t72 = (t56 + 4);
    t73 = (t57 + 4);
    t74 = *((unsigned int *)t56);
    t75 = (~(t74));
    t76 = *((unsigned int *)t72);
    t77 = (~(t76));
    t78 = *((unsigned int *)t57);
    t79 = (~(t78));
    t80 = *((unsigned int *)t73);
    t81 = (~(t80));
    t82 = (t75 & t77);
    t83 = (t79 & t81);
    t84 = (~(t82));
    t85 = (~(t83));
    t86 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t86 & t84);
    t87 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t87 & t85);
    t88 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t88 & t84);
    t89 = *((unsigned int *)t58);
    *((unsigned int *)t58) = (t89 & t85);
    goto LAB22;

}

static void Always_52_1(char *t0)
{
    char t13[8];
    char t16[8];
    char t24[8];
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
    char *t21;
    unsigned int t22;
    int t23;

LAB0:    t1 = (t0 + 4328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 4664);
    *((int *)t2) = 1;
    t3 = (t0 + 4360);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(53, ng0);

LAB5:    xsi_set_current_line(54, ng0);
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
    t2 = (t0 + 2120U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(75, ng0);

LAB30:    xsi_set_current_line(76, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2840);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(77, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(78, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3160);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);

LAB12:
LAB8:    goto LAB2;

LAB6:    xsi_set_current_line(55, ng0);

LAB9:    xsi_set_current_line(56, ng0);
    t11 = ((char*)((ng6)));
    t12 = (t0 + 2840);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 3);
    xsi_set_current_line(57, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3000);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);
    xsi_set_current_line(58, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 3160);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB8;

LAB10:    xsi_set_current_line(61, ng0);

LAB13:    xsi_set_current_line(62, ng0);
    t4 = (t0 + 2280U);
    t5 = *((char **)t4);
    t4 = (t0 + 2240U);
    t11 = (t4 + 72U);
    t12 = *((char **)t11);
    t14 = (t0 + 2440U);
    t15 = *((char **)t14);
    xsi_vlog_generic_get_index_select_value(t13, 1, t5, t12, 2, t15, 32, 2);
    t14 = (t0 + 2840);
    t17 = (t0 + 2840);
    t18 = (t17 + 72U);
    t19 = *((char **)t18);
    t20 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t16, t19, 2, t20, 32, 1);
    t21 = (t16 + 4);
    t22 = *((unsigned int *)t21);
    t23 = (!(t22));
    if (t23 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2280U);
    t3 = *((char **)t2);
    t2 = (t0 + 2240U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t11 = (t0 + 2440U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng8)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t12, 32, t11, 32);
    xsi_vlog_generic_get_index_select_value(t13, 1, t3, t5, 2, t16, 32, 2);
    t14 = (t0 + 2840);
    t15 = (t0 + 2840);
    t17 = (t15 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng8)));
    xsi_vlog_generic_convert_bit_index(t24, t18, 2, t19, 32, 1);
    t20 = (t24 + 4);
    t6 = *((unsigned int *)t20);
    t23 = (!(t6));
    if (t23 == 1)
        goto LAB16;

LAB17:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2280U);
    t3 = *((char **)t2);
    t2 = (t0 + 2240U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t11 = (t0 + 2440U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng9)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t12, 32, t11, 32);
    xsi_vlog_generic_get_index_select_value(t13, 1, t3, t5, 2, t16, 32, 2);
    t14 = (t0 + 2840);
    t15 = (t0 + 2840);
    t17 = (t15 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng9)));
    xsi_vlog_generic_convert_bit_index(t24, t18, 2, t19, 32, 1);
    t20 = (t24 + 4);
    t6 = *((unsigned int *)t20);
    t23 = (!(t6));
    if (t23 == 1)
        goto LAB18;

LAB19:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2280U);
    t3 = *((char **)t2);
    t2 = (t0 + 2240U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t11 = (t0 + 2440U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng10)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t12, 32, t11, 32);
    xsi_vlog_generic_get_index_select_value(t13, 1, t3, t5, 2, t16, 32, 2);
    t14 = (t0 + 3000);
    t15 = (t0 + 3000);
    t17 = (t15 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t24, t18, 2, t19, 32, 1);
    t20 = (t24 + 4);
    t6 = *((unsigned int *)t20);
    t23 = (!(t6));
    if (t23 == 1)
        goto LAB20;

LAB21:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2280U);
    t3 = *((char **)t2);
    t2 = (t0 + 2240U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t11 = (t0 + 2440U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng11)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t12, 32, t11, 32);
    xsi_vlog_generic_get_index_select_value(t13, 1, t3, t5, 2, t16, 32, 2);
    t14 = (t0 + 3000);
    t15 = (t0 + 3000);
    t17 = (t15 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng8)));
    xsi_vlog_generic_convert_bit_index(t24, t18, 2, t19, 32, 1);
    t20 = (t24 + 4);
    t6 = *((unsigned int *)t20);
    t23 = (!(t6));
    if (t23 == 1)
        goto LAB22;

LAB23:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2280U);
    t3 = *((char **)t2);
    t2 = (t0 + 2240U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t11 = (t0 + 2440U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng12)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t12, 32, t11, 32);
    xsi_vlog_generic_get_index_select_value(t13, 1, t3, t5, 2, t16, 32, 2);
    t14 = (t0 + 3000);
    t15 = (t0 + 3000);
    t17 = (t15 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng9)));
    xsi_vlog_generic_convert_bit_index(t24, t18, 2, t19, 32, 1);
    t20 = (t24 + 4);
    t6 = *((unsigned int *)t20);
    t23 = (!(t6));
    if (t23 == 1)
        goto LAB24;

LAB25:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2280U);
    t3 = *((char **)t2);
    t2 = (t0 + 2240U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t11 = (t0 + 2440U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng13)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t12, 32, t11, 32);
    xsi_vlog_generic_get_index_select_value(t13, 1, t3, t5, 2, t16, 32, 2);
    t14 = (t0 + 3160);
    t15 = (t0 + 3160);
    t17 = (t15 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng7)));
    xsi_vlog_generic_convert_bit_index(t24, t18, 2, t19, 32, 1);
    t20 = (t24 + 4);
    t6 = *((unsigned int *)t20);
    t23 = (!(t6));
    if (t23 == 1)
        goto LAB26;

LAB27:    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2280U);
    t3 = *((char **)t2);
    t2 = (t0 + 2240U);
    t4 = (t2 + 72U);
    t5 = *((char **)t4);
    t11 = (t0 + 2440U);
    t12 = *((char **)t11);
    t11 = ((char*)((ng14)));
    memset(t16, 0, 8);
    xsi_vlog_unsigned_add(t16, 32, t12, 32, t11, 32);
    xsi_vlog_generic_get_index_select_value(t13, 1, t3, t5, 2, t16, 32, 2);
    t14 = (t0 + 3160);
    t15 = (t0 + 3160);
    t17 = (t15 + 72U);
    t18 = *((char **)t17);
    t19 = ((char*)((ng8)));
    xsi_vlog_generic_convert_bit_index(t24, t18, 2, t19, 32, 1);
    t20 = (t24 + 4);
    t6 = *((unsigned int *)t20);
    t23 = (!(t6));
    if (t23 == 1)
        goto LAB28;

LAB29:    goto LAB12;

LAB14:    xsi_vlogvar_assign_value(t14, t13, 0, *((unsigned int *)t16), 1);
    goto LAB15;

LAB16:    xsi_vlogvar_assign_value(t14, t13, 0, *((unsigned int *)t24), 1);
    goto LAB17;

LAB18:    xsi_vlogvar_assign_value(t14, t13, 0, *((unsigned int *)t24), 1);
    goto LAB19;

LAB20:    xsi_vlogvar_assign_value(t14, t13, 0, *((unsigned int *)t24), 1);
    goto LAB21;

LAB22:    xsi_vlogvar_assign_value(t14, t13, 0, *((unsigned int *)t24), 1);
    goto LAB23;

LAB24:    xsi_vlogvar_assign_value(t14, t13, 0, *((unsigned int *)t24), 1);
    goto LAB25;

LAB26:    xsi_vlogvar_assign_value(t14, t13, 0, *((unsigned int *)t24), 1);
    goto LAB27;

LAB28:    xsi_vlogvar_assign_value(t14, t13, 0, *((unsigned int *)t24), 1);
    goto LAB29;

}


extern void work_m_00000000003631329354_3004989777_init()
{
	static char *pe[] = {(void *)Cont_48_0,(void *)Always_52_1};
	xsi_register_didat("work_m_00000000003631329354_3004989777", "isim/testBig_isim_beh.exe.sim/work/m_00000000003631329354_3004989777.didat");
	xsi_register_executes(pe);
}
