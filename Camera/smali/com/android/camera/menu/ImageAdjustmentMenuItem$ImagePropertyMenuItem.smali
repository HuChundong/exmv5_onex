.class Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;
.super Lcom/android/camera/menu/MenuItem;
.source "ImageAdjustmentMenuItem.java"

# interfaces
.implements Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;
.implements Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/menu/ImageAdjustmentMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImagePropertyMenuItem"
.end annotation


# instance fields
.field public final index:I

.field private m_EffectManager:Lcom/android/camera/effect/IEffectManager;

.field private m_PropertyItem:Lcom/android/camera/widget/ImagePropertyItem;

.field final synthetic this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;

.field public final valueProperty:Lcom/android/camera/property/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/camera/property/Property",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/menu/ImageAdjustmentMenuItem;I)V
    .locals 3

    iput-object p1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    invoke-direct {p0}, Lcom/android/camera/menu/MenuItem;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->setSelectable(Z)V

    iput p2, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->index:I

    #getter for: Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {p1}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->access$000(Lcom/android/camera/menu/ImageAdjustmentMenuItem;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getSettings()Lcom/android/camera/CameraSettings;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/android/camera/property/Property;

    :goto_0
    #getter for: Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {p1}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->access$000(Lcom/android/camera/menu/ImageAdjustmentMenuItem;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v1

    const-class v2, Lcom/android/camera/effect/IEffectManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/IEffectManager;

    iput-object v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    return-void

    :pswitch_0
    iget-object v1, v0, Lcom/android/camera/CameraSettings;->brightness:Lcom/android/camera/property/Property;

    iput-object v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/android/camera/property/Property;

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/android/camera/CameraSettings;->contrast:Lcom/android/camera/property/Property;

    iput-object v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/android/camera/property/Property;

    goto :goto_0

    :pswitch_2
    iget-object v1, v0, Lcom/android/camera/CameraSettings;->saturation:Lcom/android/camera/property/Property;

    iput-object v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/android/camera/property/Property;

    goto :goto_0

    :pswitch_3
    iget-object v1, v0, Lcom/android/camera/CameraSettings;->sharpness:Lcom/android/camera/property/Property;

    iput-object v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/android/camera/property/Property;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getViewOverride(Landroid/content/Context;Landroid/view/LayoutInflater;ILandroid/view/View;)Landroid/view/View;
    .locals 3

    instance-of v0, p4, Lcom/android/camera/widget/ImagePropertyItem;

    if-nez v0, :cond_0

    new-instance p4, Lcom/android/camera/widget/ImagePropertyItem;

    iget-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    #getter for: Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v0}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->access$000(Lcom/android/camera/menu/ImageAdjustmentMenuItem;)Lcom/android/camera/HTCCamera;

    move-result-object v0

    invoke-direct {p4, v0}, Lcom/android/camera/widget/ImagePropertyItem;-><init>(Landroid/content/Context;)V

    :cond_0
    check-cast p4, Lcom/android/camera/widget/ImagePropertyItem;

    iput-object p4, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_PropertyItem:Lcom/android/camera/widget/ImagePropertyItem;

    iget-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_PropertyItem:Lcom/android/camera/widget/ImagePropertyItem;

    iget v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->index:I

    iget-object v2, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    #getter for: Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_CameraThread:Lcom/android/camera/CameraThread;
    invoke-static {v2}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->access$100(Lcom/android/camera/menu/ImageAdjustmentMenuItem;)Lcom/android/camera/CameraThread;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/widget/ImagePropertyItem;->initialize(ILcom/android/camera/CameraThread;)V

    iget-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_PropertyItem:Lcom/android/camera/widget/ImagePropertyItem;

    invoke-virtual {v0, p0}, Lcom/android/camera/widget/ImagePropertyItem;->setOnButtonClickedListener(Lcom/android/camera/widget/ImagePropertyItem$OnButtonClickedListener;)V

    iget-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_PropertyItem:Lcom/android/camera/widget/ImagePropertyItem;

    invoke-virtual {v0, p0}, Lcom/android/camera/widget/ImagePropertyItem;->setOnLevelChangedListener(Lcom/android/camera/widget/ImagePropertyItem$OnLevelChangedListener;)V

    iget-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_PropertyItem:Lcom/android/camera/widget/ImagePropertyItem;

    return-object v0
.end method

.method public isCustomView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isDefaultLevel()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/android/camera/property/Property;

    if-nez v0, :cond_0

    const-string v0, "ImageAdjustmentMenuItem"

    const-string v1, "isDefaultLevel() - valueProperty is null"

    invoke-static {v0, v1}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->valueProperty:Lcom/android/camera/property/Property;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/property/Property;->isValueEquals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public onButtonClicked(Lcom/android/camera/widget/ImagePropertyItem;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    invoke-virtual {v0}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->notifyItemContentClicked()V

    return-void
.end method

.method public onLevelChanged(Lcom/android/camera/widget/ImagePropertyItem;I)V
    .locals 3

    iget-object v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    invoke-virtual {v1}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->updateContent()V

    iget-object v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    iget-object v1, v1, Lcom/android/camera/effect/IEffectManager;->currentScene:Lcom/android/camera/property/Property;

    invoke-virtual {v1}, Lcom/android/camera/property/Property;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/camera/effect/SmartSceneDetectorScene;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->m_EffectManager:Lcom/android/camera/effect/IEffectManager;

    const-class v2, Lcom/android/camera/effect/AutoScene;

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/IEffectManager;->setCurrentScene(Ljava/lang/Class;)Z

    iget-object v1, p0, Lcom/android/camera/menu/ImageAdjustmentMenuItem$ImagePropertyMenuItem;->this$0:Lcom/android/camera/menu/ImageAdjustmentMenuItem;

    #getter for: Lcom/android/camera/menu/ImageAdjustmentMenuItem;->m_CameraActivity:Lcom/android/camera/HTCCamera;
    invoke-static {v1}, Lcom/android/camera/menu/ImageAdjustmentMenuItem;->access$000(Lcom/android/camera/menu/ImageAdjustmentMenuItem;)Lcom/android/camera/HTCCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/HTCCamera;->getComponentManager()Lcom/android/camera/component/UIComponentManager;

    move-result-object v1

    const-class v2, Lcom/android/camera/IToastManager;

    invoke-virtual {v1, v2}, Lcom/android/camera/component/UIComponentManager;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/IToastManager;

    if-eqz v0, :cond_1

    const v1, 0x7f0a0061

    invoke-virtual {v0, v1}, Lcom/android/camera/IToastManager;->showToast(I)Lcom/android/camera/Handle;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "ImageAdjustmentMenuItem"

    const-string v2, "onLevelChanged() - No IToastManager interface"

    invoke-static {v1, v2}, Lcom/android/camera/LOG;->W(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
