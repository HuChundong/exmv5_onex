.class Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;
.super Ljava/lang/Object;
.source "MoreButton.java"


# instance fields
.field private Name:Ljava/lang/String;

.field private imageRes:I

.field private mEnabled:Z

.field private mToggleStates:Z

.field private mToggleVisibility:Z

.field private mVisibility:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .parameter "Name"
    .parameter "res"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 615
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 616
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->Name:Ljava/lang/String;

    .line 617
    iput p2, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->imageRes:I

    .line 618
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->mEnabled:Z

    .line 619
    iput-boolean v1, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->mVisibility:Z

    .line 620
    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->mToggleVisibility:Z

    .line 621
    iput-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->mToggleStates:Z

    .line 622
    return-void
.end method


# virtual methods
.method public getEnabled()Z
    .locals 1

    .prologue
    .line 647
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->mEnabled:Z

    return v0
.end method

.method public getImageRes()I
    .locals 1

    .prologue
    .line 637
    iget v0, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->imageRes:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public getToggleState()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->mToggleStates:Z

    return v0
.end method

.method public getToggleVisibility()Z
    .locals 1

    .prologue
    .line 667
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->mToggleVisibility:Z

    return v0
.end method

.method public getVisibility()Z
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->mVisibility:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 642
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->mEnabled:Z

    .line 643
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 631
    iput-object p1, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->Name:Ljava/lang/String;

    .line 632
    return-void
.end method

.method public setToggleState(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 672
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->mToggleStates:Z

    .line 673
    return-void
.end method

.method public setToggleVisibility(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 662
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->mToggleVisibility:Z

    .line 663
    return-void
.end method

.method public setVisibility(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 652
    iput-boolean p1, p0, Lcom/htc/videowidget/videoview/widget/MoreBtnListItem;->mVisibility:Z

    .line 653
    return-void
.end method
