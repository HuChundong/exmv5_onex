.class Lcom/android/camera/actionscreen/CommonActionScreen$17;
.super Ljava/lang/Object;
.source "CommonActionScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/actionscreen/CommonActionScreen;->prepareHtcActionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/actionscreen/CommonActionScreen;


# direct methods
.method constructor <init>(Lcom/android/camera/actionscreen/CommonActionScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/actionscreen/CommonActionScreen$17;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

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
    iget-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen$17;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #calls: Lcom/android/camera/actionscreen/CommonActionScreen;->resetBackButtonBackground()V
    invoke-static {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$1200(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen$17;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #getter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$1300(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen$17;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #getter for: Lcom/android/camera/actionscreen/CommonActionScreen;->m_BackButton:Landroid/view/View;
    invoke-static {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$1300(Lcom/android/camera/actionscreen/CommonActionScreen;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/camera/actionscreen/CommonActionScreen$17;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    const-string v4, "camera_back_btn_pressed"

    const v5, 0x7f02002d

    #calls: Lcom/android/camera/actionscreen/CommonActionScreen;->getSkinnedDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v3, v4, v5}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$1400(Lcom/android/camera/actionscreen/CommonActionScreen;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen$17;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #calls: Lcom/android/camera/actionscreen/CommonActionScreen;->resetBackButtonBackground()V
    invoke-static {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$1200(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    iget-object v2, p0, Lcom/android/camera/actionscreen/CommonActionScreen$17;->this$0:Lcom/android/camera/actionscreen/CommonActionScreen;

    #calls: Lcom/android/camera/actionscreen/CommonActionScreen;->onCaptureClicked()V
    invoke-static {v2}, Lcom/android/camera/actionscreen/CommonActionScreen;->access$200(Lcom/android/camera/actionscreen/CommonActionScreen;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
