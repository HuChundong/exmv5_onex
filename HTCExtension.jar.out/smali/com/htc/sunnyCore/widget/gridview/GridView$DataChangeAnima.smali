.class Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;
.super Ljava/lang/Object;
.source "GridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/sunnyCore/widget/gridview/GridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataChangeAnima"
.end annotation


# instance fields
.field controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;

.field id:I

.field final synthetic this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

.field view:Lcom/htc/sunnyCore/view/SView;


# direct methods
.method constructor <init>(Lcom/htc/sunnyCore/widget/gridview/GridView;ILcom/htc/sunnyCore/view/SView;Lcom/htc/sunnyCore/view/animation/SAnimationController;)V
    .locals 0
    .parameter
    .parameter "idx"
    .parameter "sview"
    .parameter "scontroller"

    .prologue
    .line 3727
    iput-object p1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->this$0:Lcom/htc/sunnyCore/widget/gridview/GridView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3728
    iput p2, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->id:I

    .line 3729
    iput-object p3, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->view:Lcom/htc/sunnyCore/view/SView;

    .line 3730
    iput-object p4, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    .line 3731
    return-void
.end method


# virtual methods
.method clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3733
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->id:I

    .line 3734
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->view:Lcom/htc/sunnyCore/view/SView;

    .line 3735
    iput-object v1, p0, Lcom/htc/sunnyCore/widget/gridview/GridView$DataChangeAnima;->controller:Lcom/htc/sunnyCore/view/animation/SAnimationController;

    .line 3736
    return-void
.end method
