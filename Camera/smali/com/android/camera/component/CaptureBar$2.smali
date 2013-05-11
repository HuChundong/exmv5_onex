.class Lcom/android/camera/component/CaptureBar$2;
.super Ljava/lang/Object;
.source "CaptureBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/CaptureBar;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/CaptureBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/CaptureBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    iget-object v4, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_ActiveCaptureButtonType:I
    invoke-static {v4}, Lcom/android/camera/component/CaptureBar;->access$000(Lcom/android/camera/component/CaptureBar;)I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    if-ltz v2, :cond_1

    if-gt v2, v1, :cond_1

    if-ltz v3, :cond_1

    if-le v3, v0, :cond_4

    :cond_1
    iget-object v4, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->isPhotoButtonPressed:Lcom/android/camera/property/Property;
    invoke-static {v4}, Lcom/android/camera/component/CaptureBar;->access$100(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->isVideoButtonPressed:Lcom/android/camera/property/Property;
    invoke-static {v4}, Lcom/android/camera/component/CaptureBar;->access$200(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->resetCaptureButton(Landroid/view/View;Z)V
    invoke-static {v4, p1, v6}, Lcom/android/camera/component/CaptureBar;->access$300(Lcom/android/camera/component/CaptureBar;Landroid/view/View;Z)V

    iget-object v4, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->isVideoButtonClicked:Lcom/android/camera/property/Property;
    invoke-static {v4}, Lcom/android/camera/component/CaptureBar;->access$400(Lcom/android/camera/component/CaptureBar;)Lcom/android/camera/property/Property;

    move-result-object v4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;)Z

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v4, v6

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_IsTakingPicture:Z
    invoke-static {v4}, Lcom/android/camera/component/CaptureBar;->access$500(Lcom/android/camera/component/CaptureBar;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    invoke-virtual {v4}, Lcom/android/camera/component/CaptureBar;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/HTCCamera;->isFastShotToShotMode()Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v6

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/camera/component/CaptureBar;->access$600(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v4

    if-ne p1, v4, :cond_6

    iget-object v4, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->onCameraButtonPressed(I)V
    invoke-static {v4, v6}, Lcom/android/camera/component/CaptureBar;->access$700(Lcom/android/camera/component/CaptureBar;I)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->onCamcorderButtonPressed(I)V
    invoke-static {v4, v6}, Lcom/android/camera/component/CaptureBar;->access$800(Lcom/android/camera/component/CaptureBar;I)V

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    #getter for: Lcom/android/camera/component/CaptureBar;->m_PhotoCaptureButton:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/android/camera/component/CaptureBar;->access$600(Lcom/android/camera/component/CaptureBar;)Landroid/widget/ImageView;

    move-result-object v4

    if-ne p1, v4, :cond_7

    iget-object v4, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->onCameraButtonReleased(I)V
    invoke-static {v4, v6}, Lcom/android/camera/component/CaptureBar;->access$900(Lcom/android/camera/component/CaptureBar;I)V

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lcom/android/camera/component/CaptureBar$2;->this$0:Lcom/android/camera/component/CaptureBar;

    #calls: Lcom/android/camera/component/CaptureBar;->onCamcorderButtonReleased(I)V
    invoke-static {v4, v6}, Lcom/android/camera/component/CaptureBar;->access$1000(Lcom/android/camera/component/CaptureBar;I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
