.class Lcom/android/camera/component/ReviewAnimationUI$3;
.super Ljava/lang/Object;
.source "ReviewAnimationUI.java"

# interfaces
.implements Lcom/android/camera/property/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/ReviewAnimationUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/camera/property/PropertyChangedCallback",
        "<",
        "Lcom/android/camera/UIState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/ReviewAnimationUI;


# direct methods
.method constructor <init>(Lcom/android/camera/component/ReviewAnimationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/android/camera/property/Property;Lcom/android/camera/property/PropertyChangedEventArgs;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/property/Property",
            "<",
            "Lcom/android/camera/UIState;",
            ">;",
            "Lcom/android/camera/property/PropertyChangedEventArgs",
            "<",
            "Lcom/android/camera/UIState;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v4, 0x0

    sget-object v1, Lcom/android/camera/component/ReviewAnimationUI$4;->$SwitchMap$com$android$camera$UIState:[I

    iget-object v0, p2, Lcom/android/camera/property/PropertyChangedEventArgs;->newValue:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/UIState;

    invoke-virtual {v0}, Lcom/android/camera/UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_HasReviewImage:Z
    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimationUI;->access$100(Lcom/android/camera/component/ReviewAnimationUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ReviewAnimationUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ReviewAnimationUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->actionScreenCloseReason:Lcom/android/camera/property/Property;

    invoke-virtual {v0}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/android/camera/actionscreen/ActionScreenCloseReason;->DeleteMedia:Lcom/android/camera/actionscreen/ActionScreenCloseReason;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;
    invoke-static {v1}, Lcom/android/camera/component/ReviewAnimationUI;->access$300(Lcom/android/camera/component/ReviewAnimationUI;)Lcom/android/camera/imaging/RawImageEventArgs;

    move-result-object v1

    iget-object v1, v1, Lcom/android/camera/imaging/RawImageEventArgs;->rawImage:[B

    iget-object v2, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;
    invoke-static {v2}, Lcom/android/camera/component/ReviewAnimationUI;->access$300(Lcom/android/camera/component/ReviewAnimationUI;)Lcom/android/camera/imaging/RawImageEventArgs;

    move-result-object v2

    iget v2, v2, Lcom/android/camera/imaging/RawImageEventArgs;->imageWidth:I

    iget-object v3, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;
    invoke-static {v3}, Lcom/android/camera/component/ReviewAnimationUI;->access$300(Lcom/android/camera/component/ReviewAnimationUI;)Lcom/android/camera/imaging/RawImageEventArgs;

    move-result-object v3

    iget v3, v3, Lcom/android/camera/imaging/RawImageEventArgs;->imageHeight:I

    const/16 v4, 0x5a

    iget-object v5, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    invoke-virtual {v5}, Lcom/android/camera/component/ReviewAnimationUI;->getCameraType()Lcom/android/camera/CameraType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraType;->isFrontCamera()Z

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/camera/imaging/ImageUtility;->yvu420spToBitmap([BIIIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/android/camera/component/ReviewAnimationUI;->m_ReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/android/camera/component/ReviewAnimationUI;->access$202(Lcom/android/camera/component/ReviewAnimationUI;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_AnimationView:Lcom/android/camera/widget/ReviewAnimationView;
    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimationUI;->access$000(Lcom/android/camera/component/ReviewAnimationUI;)Lcom/android/camera/widget/ReviewAnimationView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_ReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/camera/component/ReviewAnimationUI;->access$200(Lcom/android/camera/component/ReviewAnimationUI;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/widget/ReviewAnimationView;->setReviewImage(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_ReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimationUI;->access$200(Lcom/android/camera/component/ReviewAnimationUI;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #setter for: Lcom/android/camera/component/ReviewAnimationUI;->m_ReviewImage:Landroid/graphics/Bitmap;
    invoke-static {v0, v6}, Lcom/android/camera/component/ReviewAnimationUI;->access$202(Lcom/android/camera/component/ReviewAnimationUI;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #setter for: Lcom/android/camera/component/ReviewAnimationUI;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;
    invoke-static {v0, v6}, Lcom/android/camera/component/ReviewAnimationUI;->access$302(Lcom/android/camera/component/ReviewAnimationUI;Lcom/android/camera/imaging/RawImageEventArgs;)Lcom/android/camera/imaging/RawImageEventArgs;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #setter for: Lcom/android/camera/component/ReviewAnimationUI;->m_HasReviewImage:Z
    invoke-static {v0, v4}, Lcom/android/camera/component/ReviewAnimationUI;->access$102(Lcom/android/camera/component/ReviewAnimationUI;Z)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    invoke-virtual {v0}, Lcom/android/camera/component/ReviewAnimationUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/HTCCamera;->isIdleOrPaused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_HasReviewImage:Z
    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimationUI;->access$100(Lcom/android/camera/component/ReviewAnimationUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #getter for: Lcom/android/camera/component/ReviewAnimationUI;->m_AnimationView:Lcom/android/camera/widget/ReviewAnimationView;
    invoke-static {v0}, Lcom/android/camera/component/ReviewAnimationUI;->access$000(Lcom/android/camera/component/ReviewAnimationUI;)Lcom/android/camera/widget/ReviewAnimationView;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/widget/ReviewAnimationView;->startReviewAnimation(D)I

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    iget-object v1, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    const/16 v2, 0x2711

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/component/ReviewAnimationUI;->sendMessage(Lcom/android/camera/component/Component;IZ)Z

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI$3;->this$0:Lcom/android/camera/component/ReviewAnimationUI;

    #setter for: Lcom/android/camera/component/ReviewAnimationUI;->m_HasReviewImage:Z
    invoke-static {v0, v4}, Lcom/android/camera/component/ReviewAnimationUI;->access$102(Lcom/android/camera/component/ReviewAnimationUI;Z)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
