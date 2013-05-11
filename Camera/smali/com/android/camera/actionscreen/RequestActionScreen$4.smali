.class Lcom/android/camera/actionscreen/RequestActionScreen$4;
.super Ljava/lang/Object;
.source "RequestActionScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/RequestActionScreen;->prepareActionScreen(Lcom/android/camera/CaptureHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/RequestActionScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/RequestActionScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/RequestActionScreen$4;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const v3, 0x7f02002e

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    if-gt v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen$4;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    #getter for: Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/actionscreen/RequestActionScreen;->access$300(Lcom/android/camera/actionscreen/RequestActionScreen;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen$4;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    #getter for: Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/actionscreen/RequestActionScreen;->access$300(Lcom/android/camera/actionscreen/RequestActionScreen;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/actionscreen/RequestActionScreen$4;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    const-string v4, "camera_back_btn_pressed"

    const v5, 0x7f02002d

    #calls: Lcom/android/camera/actionscreen/RequestActionScreen;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4, v5}, Lcom/android/camera/actionscreen/RequestActionScreen;->access$400(Lcom/android/camera/actionscreen/RequestActionScreen;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen$4;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    #getter for: Lcom/android/camera/actionscreen/RequestActionScreen;->m_ReCaptureButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/actionscreen/RequestActionScreen;->access$300(Lcom/android/camera/actionscreen/RequestActionScreen;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/camera/actionscreen/RequestActionScreen$4;->this$0:Lcom/android/camera/actionscreen/RequestActionScreen;

    #calls: Lcom/android/camera/actionscreen/RequestActionScreen;->onReCaptureClicked()V
    invoke-static {v2}, Lcom/android/camera/actionscreen/RequestActionScreen;->access$500(Lcom/android/camera/actionscreen/RequestActionScreen;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
