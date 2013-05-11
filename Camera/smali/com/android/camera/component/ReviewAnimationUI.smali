.class public final Lcom/android/camera/component/ReviewAnimationUI;
.super Lcom/android/camera/component/UIComponent;
.source "ReviewAnimationUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/component/ReviewAnimationUI$4;
    }
.end annotation


# static fields
.field private static final MSG_GOT_REVIEW_IMAGE:I = 0x2710

.field private static final MSG_RAISE_COMPLETED_EVENT:I = 0x2711

.field public static final NAME:Ljava/lang/String; = "Review Animation UI"


# instance fields
.field private m_AnimationView:Lcom/android/camera/widget/ReviewAnimationView;

.field private m_HasReviewImage:Z

.field private m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

.field private m_ReviewImage:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lcom/android/camera/HTCCamera;)V
    .locals 3

    const-string v0, "Review Animation UI"

    const/4 v1, 0x1

    const v2, 0x7f080046

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/component/UIComponent;-><init>(Ljava/lang/String;ZLcom/android/camera/HTCCamera;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/component/ReviewAnimationUI;)Lcom/android/camera/widget/ReviewAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI;->m_AnimationView:Lcom/android/camera/widget/ReviewAnimationView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/camera/component/ReviewAnimationUI;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/component/ReviewAnimationUI;->m_HasReviewImage:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/camera/component/ReviewAnimationUI;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/component/ReviewAnimationUI;->m_HasReviewImage:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/camera/component/ReviewAnimationUI;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI;->m_ReviewImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/component/ReviewAnimationUI;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ReviewAnimationUI;->m_ReviewImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/component/ReviewAnimationUI;)Lcom/android/camera/imaging/RawImageEventArgs;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/camera/component/ReviewAnimationUI;Lcom/android/camera/imaging/RawImageEventArgs;)Lcom/android/camera/imaging/RawImageEventArgs;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/ReviewAnimationUI;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    return-object p1
.end method


# virtual methods
.method protected handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/camera/component/UIComponent;->handleMessage(Landroid/os/Message;)V

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/component/ReviewAnimationUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v0, v0, Lcom/android/camera/HTCCamera;->reviewAnimationCompletedEvent:Lcom/android/camera/event/Event;

    sget-object v1, Lcom/android/camera/event/EventArgs;->empty:Lcom/android/camera/event/EventArgs;

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/event/Event;->raise(Ljava/lang/Object;Lcom/android/camera/event/EventArgs;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/camera/imaging/RawImageEventArgs;

    iput-object v0, p0, Lcom/android/camera/component/ReviewAnimationUI;->m_PostViewImage:Lcom/android/camera/imaging/RawImageEventArgs;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/component/ReviewAnimationUI;->m_HasReviewImage:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected initializeOverride()V
    .locals 5

    invoke-super {p0}, Lcom/android/camera/component/UIComponent;->initializeOverride()V

    invoke-virtual {p0}, Lcom/android/camera/component/ReviewAnimationUI;->getBaseLayout()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f080046

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/camera/widget/ReviewAnimationView;

    iput-object v3, p0, Lcom/android/camera/component/ReviewAnimationUI;->m_AnimationView:Lcom/android/camera/widget/ReviewAnimationView;

    iget-object v3, p0, Lcom/android/camera/component/ReviewAnimationUI;->m_AnimationView:Lcom/android/camera/widget/ReviewAnimationView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/camera/widget/ReviewAnimationView;->setZOrderMediaOverlay(Z)V

    invoke-virtual {p0}, Lcom/android/camera/component/ReviewAnimationUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/component/ReviewAnimationUI;->getCameraThread()Lcom/android/camera/CameraThread;

    move-result-object v1

    new-instance v2, Lcom/android/camera/component/ReviewAnimationUI$1;

    invoke-direct {v2, p0}, Lcom/android/camera/component/ReviewAnimationUI$1;-><init>(Lcom/android/camera/component/ReviewAnimationUI;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->deactivatedEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v3, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->pausingEvent:Lcom/android/camera/event/Event;

    invoke-virtual {v3, v2}, Lcom/android/camera/event/Event;->addHandler(Lcom/android/camera/event/EventHandler;)V

    new-instance v3, Lcom/android/camera/component/ReviewAnimationUI$2;

    invoke-direct {v3, p0, v1}, Lcom/android/camera/component/ReviewAnimationUI$2;-><init>(Lcom/android/camera/component/ReviewAnimationUI;Lcom/android/camera/CameraThread;)V

    invoke-virtual {v1, v3}, Lcom/android/camera/CameraThread;->invokeAsync(Ljava/lang/Runnable;)Z

    iget-object v3, v0, Lcom/android/camera/HTCCamera;->actionScreenState:Lcom/android/camera/property/Property;

    new-instance v4, Lcom/android/camera/component/ReviewAnimationUI$3;

    invoke-direct {v4, p0}, Lcom/android/camera/component/ReviewAnimationUI$3;-><init>(Lcom/android/camera/component/ReviewAnimationUI;)V

    invoke-virtual {v3, v4}, Lcom/android/camera/property/Property;->addChangedCallback(Lcom/android/camera/property/PropertyChangedCallback;)V

    return-void
.end method
