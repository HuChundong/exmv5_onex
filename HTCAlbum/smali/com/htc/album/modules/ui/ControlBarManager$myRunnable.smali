.class Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;
.super Ljava/lang/Object;
.source "ControlBarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/album/modules/ui/ControlBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "myRunnable"
.end annotation


# instance fields
.field barId:I

.field footerAnimation:Landroid/view/animation/Animation;

.field headerAnimation:Landroid/view/animation/Animation;

.field visible:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 800
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 802
    iput v0, p0, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->barId:I

    .line 803
    iput-boolean v0, p0, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->visible:Z

    .line 805
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->headerAnimation:Landroid/view/animation/Animation;

    .line 806
    iput-object v1, p0, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->footerAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/album/modules/ui/ControlBarManager$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 800
    invoke-direct {p0}, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 829
    return-void
.end method

.method public setFooterBarAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 823
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->footerAnimation:Landroid/view/animation/Animation;

    .line 824
    return-void
.end method

.method public setHeaderBarAnimation(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 819
    iput-object p1, p0, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->headerAnimation:Landroid/view/animation/Animation;

    .line 820
    return-void
.end method

.method public setId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 815
    iput p1, p0, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->barId:I

    .line 816
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 810
    iput-boolean p1, p0, Lcom/htc/album/modules/ui/ControlBarManager$myRunnable;->visible:Z

    .line 811
    return-void
.end method
