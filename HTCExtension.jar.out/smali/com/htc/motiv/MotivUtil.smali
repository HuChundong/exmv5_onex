.class public Lcom/htc/motiv/MotivUtil;
.super Ljava/lang/Object;
.source "MotivUtil.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final DEFAULT_MOTIV_PRIORITY:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAX_MOTIV_PRIORITY:I = 0xf
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MIN_MOTIV_PRIORITY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_ALARM:I = 0xd
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_EFFECT:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PRIORITY_FEEDBACK:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdWithPriority(II)I
    .locals 1
    .parameter "id"
    .parameter "priority"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    const/4 v0, -0x1

    return v0
.end method

.method public static setNotificationEffectId(Landroid/app/Notification;I)Z
    .locals 1
    .parameter "n"
    .parameter "id"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public static setNotificationEffectId(Landroid/app/Notification;Ljava/lang/String;)Z
    .locals 1
    .parameter "n"
    .parameter "idName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    return v0
.end method
