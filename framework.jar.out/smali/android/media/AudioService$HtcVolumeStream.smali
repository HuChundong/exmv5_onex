.class public Landroid/media/AudioService$HtcVolumeStream;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HtcVolumeStream"
.end annotation


# instance fields
.field protected mIndex:I

.field protected mIsMaximum:Z

.field protected mLastAudibleIndex:I

.field protected mProfileLastaudibleSettingName:Ljava/lang/String;

.field protected mProfileSettingName:Ljava/lang/String;

.field protected mShouldFeedback:Z

.field protected mTouchMaximum:Z

.field final synthetic this$0:Landroid/media/AudioService;


# direct methods
.method public constructor <init>(Landroid/media/AudioService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 4197
    iput-object p1, p0, Landroid/media/AudioService$HtcVolumeStream;->this$0:Landroid/media/AudioService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4198
    iput v0, p0, Landroid/media/AudioService$HtcVolumeStream;->mIndex:I

    .line 4199
    iput v0, p0, Landroid/media/AudioService$HtcVolumeStream;->mLastAudibleIndex:I

    .line 4200
    const-string v0, ""

    iput-object v0, p0, Landroid/media/AudioService$HtcVolumeStream;->mProfileSettingName:Ljava/lang/String;

    .line 4201
    const-string v0, ""

    iput-object v0, p0, Landroid/media/AudioService$HtcVolumeStream;->mProfileLastaudibleSettingName:Ljava/lang/String;

    .line 4202
    iput-boolean v1, p0, Landroid/media/AudioService$HtcVolumeStream;->mIsMaximum:Z

    .line 4203
    iput-boolean v1, p0, Landroid/media/AudioService$HtcVolumeStream;->mTouchMaximum:Z

    .line 4204
    iput-boolean v1, p0, Landroid/media/AudioService$HtcVolumeStream;->mShouldFeedback:Z

    .line 4205
    return-void
.end method
