.class Lcom/android/camera/effect/EffectControlUI$11;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectControlUI;->initializeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectControlUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v4, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-virtual {v4}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v0

    iget-object v4, p0, Lcom/android/camera/effect/EffectControlUI$11;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCircle:Lcom/android/camera/widget/EffectControlCircle;
    invoke-static {v4}, Lcom/android/camera/effect/EffectControlUI;->access$1100(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/widget/EffectControlCircle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/widget/EffectControlCircle;->isUserChangeCenterPointAllowed()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sget v5, Lcom/android/camera/DisplayDevice;->SCREEN_WIDTH:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {p2, v4, v5}, Landroid/view/MotionEvent;->setLocation(FF)V

    invoke-virtual {v0, p2}, Lcom/android/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget-object v4, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v4}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    int-to-float v4, v4

    sub-float/2addr v4, v2

    invoke-virtual {p2, v4, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    invoke-virtual {p2, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, p2}, Lcom/android/camera/HTCCamera;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0
.end method
