.class Lcom/android/camera/effect/EffectControlUI$8;
.super Lcom/android/camera/trigger/Trigger;
.source "EffectControlUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/effect/EffectControlUI;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/effect/EffectControlUI;


# direct methods
.method constructor <init>(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/effect/EffectControlUI$8;->this$0:Lcom/android/camera/effect/EffectControlUI;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 2

    iget-object v0, p0, Lcom/android/camera/effect/EffectControlUI$8;->this$0:Lcom/android/camera/effect/EffectControlUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/camera/effect/EffectControlUI;->m_ToastHandle:Lcom/android/camera/Handle;
    invoke-static {v0, v1}, Lcom/android/camera/effect/EffectControlUI;->access$002(Lcom/android/camera/effect/EffectControlUI;Lcom/android/camera/Handle;)Lcom/android/camera/Handle;

    return-void
.end method
