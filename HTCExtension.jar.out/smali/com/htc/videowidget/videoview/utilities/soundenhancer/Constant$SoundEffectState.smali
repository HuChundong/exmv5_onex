.class public final enum Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SoundEffectState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

.field public static final enum BEATS_BT_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

.field public static final enum BEATS_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

.field public static final enum BEATS_PILL:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

.field public static final enum BT_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

.field public static final enum HDMI:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

.field public static final enum HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

.field public static final enum NOT_INIT:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

.field public static final enum SPEAKER:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    const-string v1, "SPEAKER"

    invoke-direct {v0, v1, v3}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->SPEAKER:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    .line 19
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    const-string v1, "HEADSET"

    invoke-direct {v0, v1, v4}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    .line 20
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    const-string v1, "BEATS_HEADSET"

    invoke-direct {v0, v1, v5}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BEATS_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    .line 21
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    const-string v1, "BT_HEADSET"

    invoke-direct {v0, v1, v6}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BT_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    .line 22
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    const-string v1, "BEATS_BT_HEADSET"

    invoke-direct {v0, v1, v7}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BEATS_BT_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    .line 23
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    const-string v1, "BEATS_PILL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BEATS_PILL:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    .line 24
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    const-string v1, "HDMI"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->HDMI:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    .line 25
    new-instance v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    const-string v1, "NOT_INIT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->NOT_INIT:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->SPEAKER:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BEATS_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BT_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BEATS_BT_HEADSET:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->BEATS_PILL:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->HDMI:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->NOT_INIT:Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->$VALUES:[Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;
    .locals 1
    .parameter "name"

    .prologue
    .line 16
    const-class v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    return-object v0
.end method

.method public static values()[Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->$VALUES:[Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    invoke-virtual {v0}, [Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;

    return-object v0
.end method
