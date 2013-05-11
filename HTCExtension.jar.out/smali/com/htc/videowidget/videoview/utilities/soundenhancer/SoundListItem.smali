.class Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;
.super Ljava/lang/Object;
.source "SoundListItem.java"


# instance fields
.field public mClickListener:Landroid/view/View$OnClickListener;

.field public mEffectIconResId:I

.field public mEqualizerStyle:Ljava/lang/String;

.field public mIsEnabled:Z

.field public mIsIconVisible:Z

.field public mIsSelected:Z

.field public mIsVisible:Z

.field public mNeedButton:Z

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "type"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mType:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mEffectIconResId:I

    .line 12
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mNeedButton:Z

    .line 13
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsEnabled:Z

    .line 14
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsVisible:Z

    .line 15
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsIconVisible:Z

    .line 16
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsSelected:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mClickListener:Landroid/view/View$OnClickListener;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mEqualizerStyle:Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mType:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .parameter "type"
    .parameter "resId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 26
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mType:Ljava/lang/String;

    .line 11
    iput v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mEffectIconResId:I

    .line 12
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mNeedButton:Z

    .line 13
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsEnabled:Z

    .line 14
    iput-boolean v2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsVisible:Z

    .line 15
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsIconVisible:Z

    .line 16
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsSelected:Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mClickListener:Landroid/view/View$OnClickListener;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mEqualizerStyle:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mType:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mEffectIconResId:I

    .line 29
    return-void
.end method


# virtual methods
.method public setEffectIcon(I)V
    .locals 0
    .parameter "resId"

    .prologue
    .line 63
    iput p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mEffectIconResId:I

    .line 64
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsEnabled:Z

    .line 34
    return-void
.end method

.method public setEqualizerStyle(Ljava/lang/String;)V
    .locals 0
    .parameter "style"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mEqualizerStyle:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setIconVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsIconVisible:Z

    .line 44
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "clickListener"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mClickListener:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsSelected:Z

    .line 54
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mIsVisible:Z

    .line 39
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoundItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/videowidget/videoview/utilities/soundenhancer/SoundListItem;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
