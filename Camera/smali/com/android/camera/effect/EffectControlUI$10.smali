.class Lcom/android/camera/effect/EffectControlUI$10;
.super Ljava/lang/Object;
.source "EffectControlUI.java"

# interfaces
.implements Lcom/android/camera/widget/EffectControlCircle$OnCenterPointChangedListener;


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

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCenterChanged(Lcom/android/camera/widget/EffectControlCircle;Landroid/graphics/Point;)V
    .locals 6

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_ShowingInitValues:Z
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$600(Lcom/android/camera/effect/EffectControlUI;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v2, Lcom/android/camera/rotate/UIRotation;->SCREEN_ROTATION:Lcom/android/camera/rotate/UIRotation;

    invoke-virtual {v2}, Lcom/android/camera/rotate/UIRotation;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/android/camera/DisplayDevice;->SCREEN_HEIGHT:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v3

    iget v2, p2, Landroid/graphics/Point;->x:I

    iput v2, p2, Landroid/graphics/Point;->y:I

    iput v1, p2, Landroid/graphics/Point;->x:I

    :cond_2
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)[Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I
    invoke-static {v3}, Lcom/android/camera/effect/EffectControlUI;->access$800(Lcom/android/camera/effect/EffectControlUI;)I

    move-result v3

    aget-object v0, v2, v3

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectControlUI;->getCameraActivity()Lcom/android/camera/HTCCamera;

    move-result-object v2

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/camera/HTCCamera;->screenPointToNormalizedPoint(IIZLandroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I
    invoke-static {v3}, Lcom/android/camera/effect/EffectControlUI;->access$800(Lcom/android/camera/effect/EffectControlUI;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPool:[Landroid/graphics/PointF;
    invoke-static {v4}, Lcom/android/camera/effect/EffectControlUI;->access$700(Lcom/android/camera/effect/EffectControlUI;)[Landroid/graphics/PointF;

    move-result-object v4

    array-length v4, v4

    rem-int/2addr v3, v4

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_EffectCenterPoolIndex:I
    invoke-static {v2, v3}, Lcom/android/camera/effect/EffectControlUI;->access$802(Lcom/android/camera/effect/EffectControlUI;I)I

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$900(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/effect/DistortionEffect;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$900(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/DistortionEffect;

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/DistortionEffect;->setCenter(Landroid/graphics/PointF;)V

    :goto_1
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    iget-object v2, v2, Lcom/android/camera/effect/IEffectControlUI;->effectCenter:Lcom/android/camera/property/Property;

    iget-object v3, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/component/Component;->propertyOwnerKey:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/camera/effect/EffectControlUI;->access$1000(Lcom/android/camera/effect/EffectControlUI;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/property/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$900(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    instance-of v2, v2, Lcom/android/camera/effect/DepthOfFieldEffect;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/effect/EffectControlUI$10;->this$0:Lcom/android/camera/effect/EffectControlUI;

    #getter for: Lcom/android/camera/effect/EffectControlUI;->m_CurrentEffect:Lcom/android/camera/effect/EffectBase;
    invoke-static {v2}, Lcom/android/camera/effect/EffectControlUI;->access$900(Lcom/android/camera/effect/EffectControlUI;)Lcom/android/camera/effect/EffectBase;

    move-result-object v2

    check-cast v2, Lcom/android/camera/effect/DepthOfFieldEffect;

    invoke-virtual {v2, v0}, Lcom/android/camera/effect/DepthOfFieldEffect;->setCenter(Landroid/graphics/PointF;)V

    goto :goto_1
.end method
