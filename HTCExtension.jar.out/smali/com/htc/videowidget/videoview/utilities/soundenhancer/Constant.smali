.class public Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;
    }
.end annotation


# static fields
.field public static final APP_NAME:Ljava/lang/String; = "VIDEOVIEW_SOUND_ENHANCER"

.field public static final SOUND_EFFECT_BEATS:I = 0x3

.field public static final SOUND_EFFECT_HTC51:I = 0x2

.field public static final SOUND_EFFECT_HTC_ENHANCER:I = 0x4

.field public static final SOUND_EFFECT_NON:I = 0x0

.field public static final SOUND_EFFECT_SRS:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static getSoundEffectString(I)Ljava/lang/String;
    .locals 1
    .parameter "effect"

    .prologue
    .line 29
    packed-switch p0, :pswitch_data_0

    .line 42
    const-string v0, "KNOWN"

    :goto_0
    return-object v0

    .line 32
    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    .line 34
    :pswitch_1
    const-string v0, "SRS"

    goto :goto_0

    .line 36
    :pswitch_2
    const-string v0, "HTC51"

    goto :goto_0

    .line 38
    :pswitch_3
    const-string v0, "BEATS"

    goto :goto_0

    .line 40
    :pswitch_4
    const-string v0, "HTC_ENHANCER"

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
