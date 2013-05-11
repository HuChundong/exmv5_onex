.class Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;
.super Ljava/lang/Object;
.source "GridItemFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationUnit"
.end annotation


# instance fields
.field controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;

.field sprite:Lcom/htc/sunnyCore/Sprite;

.field final synthetic this$1:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;


# direct methods
.method constructor <init>(Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;Lcom/htc/sunnyCore/Sprite;Lcom/htc/sunnyCore/view/animation/SAnimationController;)V
    .locals 0
    .parameter
    .parameter "sprite"
    .parameter "controller"

    .prologue
    .line 668
    iput-object p1, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->this$1:Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 669
    iput-object p2, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->sprite:Lcom/htc/sunnyCore/Sprite;

    .line 670
    iput-object p3, p0, Lcom/htc/sunny2/widget/gridview/GridItemFolder$FolderAnimation$AnimationUnit;->controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    .line 671
    return-void
.end method
