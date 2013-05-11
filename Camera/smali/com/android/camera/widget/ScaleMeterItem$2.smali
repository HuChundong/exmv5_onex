.class Lcom/android/camera/widget/ScaleMeterItem$2;
.super Ljava/lang/Object;
.source "ScaleMeterItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/widget/ScaleMeterItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/widget/ScaleMeterItem;


# direct methods
.method constructor <init>(Lcom/android/camera/widget/ScaleMeterItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/widget/ScaleMeterItem$2;->this$0:Lcom/android/camera/widget/ScaleMeterItem;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem$2;->this$0:Lcom/android/camera/widget/ScaleMeterItem;

    #calls: Lcom/android/camera/widget/ScaleMeterItem;->increaseLevel()V
    invoke-static {v0}, Lcom/android/camera/widget/ScaleMeterItem;->access$200(Lcom/android/camera/widget/ScaleMeterItem;)V

    iget-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem$2;->this$0:Lcom/android/camera/widget/ScaleMeterItem;

    #getter for: Lcom/android/camera/widget/ScaleMeterItem;->mOnButtonClickedListener:Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;
    invoke-static {v0}, Lcom/android/camera/widget/ScaleMeterItem;->access$100(Lcom/android/camera/widget/ScaleMeterItem;)Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/widget/ScaleMeterItem$2;->this$0:Lcom/android/camera/widget/ScaleMeterItem;

    #getter for: Lcom/android/camera/widget/ScaleMeterItem;->mOnButtonClickedListener:Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;
    invoke-static {v0}, Lcom/android/camera/widget/ScaleMeterItem;->access$100(Lcom/android/camera/widget/ScaleMeterItem;)Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/widget/ScaleMeterItem$2;->this$0:Lcom/android/camera/widget/ScaleMeterItem;

    invoke-interface {v0, v1, p1}, Lcom/android/camera/widget/ScaleMeterItem$OnButtonClickedListener;->onButtonClicked(Lcom/android/camera/widget/ScaleMeterItem;Landroid/view/View;)V

    :cond_0
    return-void
.end method
