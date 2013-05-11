.class Lcom/android/camera/effect/EffectPanelUI$10;
.super Lcom/android/camera/trigger/Trigger;
.source "EffectPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectPanelUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectPanelUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectPanelUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectPanelUI$10;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/effect/EffectPanelUI$10;->this$0:Lcom/android/camera/effect/EffectPanelUI;

    #calls: Lcom/android/camera/effect/EffectPanelUI;->openUI()V
    invoke-static {v0}, Lcom/android/camera/effect/EffectPanelUI;->access$1500(Lcom/android/camera/effect/EffectPanelUI;)V

    return-void
.end method
