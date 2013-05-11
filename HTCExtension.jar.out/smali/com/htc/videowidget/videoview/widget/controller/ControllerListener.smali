.class public abstract Lcom/htc/videowidget/videoview/widget/controller/ControllerListener;
.super Ljava/lang/Object;
.source "ControllerListener.java"


# static fields
.field public static final BUNDLE_KEY_BOOLEAN:Ljava/lang/String; = "key_boolean"

.field public static final BUNDLE_KEY_INT:Ljava/lang/String; = "key_int"

.field public static final EVENT_ID_CLICK_FF:I = 0xbba

.field public static final EVENT_ID_CLICK_PLAY:I = 0xbb9

.field public static final EVENT_ID_CLICK_RR:I = 0xbbb

.field public static final EVENT_ID_CLICK_SLOW_MOTION:I = 0xbc0

.field public static final EVENT_ID_HIDE_CONTROLLER:I = 0xbc3

.field public static final EVENT_ID_MENU_ITEM_SELECT:I = 0xbbf

.field public static final EVENT_ID_MORE_CLICK:I = 0xbc1

.field public static final EVENT_ID_ON_TOUCH:I = 0xbc2

.field public static final EVENT_ID_SEEK_DRAG:I = 0xbbd

.field public static final EVENT_ID_SEEK_START:I = 0xbbc

.field public static final EVENT_ID_SEEK_STOP:I = 0xbbe


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStringFromEventId(I)Ljava/lang/String;
    .locals 1
    .parameter "eventID"

    .prologue
    .line 28
    packed-switch p0, :pswitch_data_0

    .line 39
    :pswitch_0
    const-string v0, "UN_DEFINE"

    :goto_0
    return-object v0

    .line 30
    :pswitch_1
    const-string v0, "EVENT_ID_CLICK_PLAY"

    goto :goto_0

    .line 31
    :pswitch_2
    const-string v0, "EVENT_ID_CLICK_FF"

    goto :goto_0

    .line 32
    :pswitch_3
    const-string v0, "EVENT_ID_CLICK_RR"

    goto :goto_0

    .line 33
    :pswitch_4
    const-string v0, "EVENT_ID_SEEK_START"

    goto :goto_0

    .line 34
    :pswitch_5
    const-string v0, "EVENT_ID_SEEK_DRAG"

    goto :goto_0

    .line 35
    :pswitch_6
    const-string v0, "EVENT_ID_SEEK_STOP"

    goto :goto_0

    .line 36
    :pswitch_7
    const-string v0, "EVENT_ID_MENU_ITEM_SELECT"

    goto :goto_0

    .line 37
    :pswitch_8
    const-string v0, "EVENT_ID_CLICK_SLOW_MOTION"

    goto :goto_0

    .line 38
    :pswitch_9
    const-string v0, "EVENT_ID_HIDE_CONTROLLER"

    goto :goto_0

    .line 28
    nop

    :pswitch_data_0
    .packed-switch 0xbb9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public abstract onEvent(ILandroid/os/Bundle;)V
.end method
