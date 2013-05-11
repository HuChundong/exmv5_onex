.class Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogNormal;
.super Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;
.source "SoundDialogNormal.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundDialogBase;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method


# virtual methods
.method protected getCurrentList(Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V
    .locals 0
    .parameter "currentStatus"

    .prologue
    .line 31
    return-void
.end method

.method public getEffectFromListIndex(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)I
    .locals 1
    .parameter "listIndex"
    .parameter "currentStatus"

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method protected getIndexFromCurrentEffect(ILcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)I
    .locals 1
    .parameter "currentEffect"
    .parameter "currentStatus"

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method protected grayOutListItem(Lcom/htc/videowidget/videoview/utilities/soundenhancer/Constant$SoundEffectState;)V
    .locals 0
    .parameter "currentStatus"

    .prologue
    .line 45
    return-void
.end method
