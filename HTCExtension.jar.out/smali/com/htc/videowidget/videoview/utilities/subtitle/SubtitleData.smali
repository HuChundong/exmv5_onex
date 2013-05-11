.class public Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;
.super Ljava/lang/Object;
.source "SubtitleData.java"


# instance fields
.field private mEndTimePos:I

.field private mStartTimePos:I

.field private strSubtitle:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->mStartTimePos:I

    .line 15
    iput v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->mEndTimePos:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->strSubtitle:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method protected getEndTimePos()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->mEndTimePos:I

    return v0
.end method

.method protected getStartTimePos()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->mStartTimePos:I

    return v0
.end method

.method protected getsubtitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->strSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method protected setEndTimePos(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 26
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->mEndTimePos:I

    .line 27
    return-void
.end method

.method protected setStartTimePos(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 21
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->mStartTimePos:I

    .line 22
    return-void
.end method

.method protected setSubtitleText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/subtitle/SubtitleData;->strSubtitle:Ljava/lang/String;

    .line 32
    return-void
.end method
