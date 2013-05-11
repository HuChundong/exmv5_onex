.class Lcom/htc/sunnyCore/widget/gridview/GridView$5;
.super Ljava/lang/Object;
.source "GridView.java"

# interfaces
.implements Lcom/htc/sunnyCore/widget/gridview/interfaces/ISceneAnimationEndIRTListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;)V
    .locals 0
    .parameter

    .prologue
    .line 4254
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 4268
    const/4 v0, 0x0

    return v0
.end method

.method public onSceneAnimationEndIRT(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 4258
    iget-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$5;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-virtual {v1, p1}, Lcom/htc/sunnyCore/widget/gridview/GridView;->getChild(I)Lcom/htc/sunnyCore/view/SView;

    move-result-object v0

    .line 4259
    .local v0, item:Lcom/htc/sunnyCore/view/SView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    if-eqz v1, :cond_0

    .line 4261
    check-cast v0, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;

    .end local v0           #item:Lcom/htc/sunnyCore/view/SView;
    invoke-virtual {v0}, Lcom/htc/sunnyCore/widget/gridview/GridViewItem;->onItemClick()V

    .line 4263
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .parameter "parcel"
    .parameter "i"

    .prologue
    .line 4274
    return-void
.end method
