.class public Lcom/android/camera/component/BIController;
.super Lcom/android/camera/component/UIComponent;
.source "BIController.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "BI Controller"


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "BIController"

    invoke-direct {p0, v0, v1, p1, v1}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    return-void
.end method

.method private setAlarm()V
    .locals 24

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/component/BIController;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v11

    const-string v3, "alarm"

    invoke-virtual {v11, v3}, Lcom/android/camera/HTCCamera;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    new-instance v16, Landroid/content/Intent;

    const-string v3, "com.htc.camera.MEDIACOUNT"

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/high16 v4, 0x800

    move-object/from16 v0, v16

    invoke-static {v11, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    new-instance v12, Ljava/util/GregorianCalendar;

    invoke-direct {v12}, Ljava/util/GregorianCalendar;-><init>()V

    const/16 v3, 0xb

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v15

    const/16 v3, 0xc

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v17

    const/16 v3, 0xd

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v21

    const/16 v3, 0xe

    invoke-virtual {v12, v3}, Ljava/util/Calendar;->get(I)I

    move-result v18

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/32 v6, 0x4ef6d80

    const-wide/32 v9, 0x5265c00

    mul-int/lit16 v3, v15, 0xe10

    mul-int/lit8 v4, v17, 0x3c

    add-int/2addr v3, v4

    add-int v3, v3, v21

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    sub-long v3, v9, v3

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v22, v0

    add-long v3, v3, v22

    const-wide/32 v22, 0x493e0

    sub-long v19, v3, v22

    const/4 v3, 0x1

    add-long v4, v13, v19

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/camera/ThreadDependencyObject;->TAG:Ljava/lang/String;

    const-string v4, "set alarm"

    invoke-static {v3, v4}, Lcom/android/camera/LOG;->V(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected initializeOverride()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-direct {p0}, Lcom/android/camera/component/BIController;->setAlarm()V

    return-void
.end method
