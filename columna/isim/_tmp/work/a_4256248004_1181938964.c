/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2007 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

/* This file is designed for use with ISim build 0x734844ce */

#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Users/aldemaro/Documents/proyecto_tesis/columna/bloque1.vhd";
extern char *IEEE_P_2592010699;

unsigned char p_2592010699_sub_2545490612_2592010699(char *, unsigned char , unsigned char );


static void work_a_4256248004_1181938964_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t1 = (t0 + 548U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1076U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = p_2592010699_sub_2545490612_2592010699(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 636U);
    t7 = *((char **)t1);
    t8 = *((unsigned char *)t7);
    t9 = p_2592010699_sub_2545490612_2592010699(IEEE_P_2592010699, t6, t8);
    t1 = (t0 + 2044);
    t10 = (t1 + 32U);
    t11 = *((char **)t10);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t1);

LAB2:    t14 = (t0 + 1992);
    *((int *)t14) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_4256248004_1181938964_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(50, ng0);

LAB3:    t1 = (t0 + 1076U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 2080);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 40U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 2000);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_4256248004_1181938964_init()
{
	static char *pe[] = {(void *)work_a_4256248004_1181938964_p_0,(void *)work_a_4256248004_1181938964_p_1};
	xsi_register_didat("work_a_4256248004_1181938964", "isim/_tmp/work/a_4256248004_1181938964.didat");
	xsi_register_executes(pe);
}
