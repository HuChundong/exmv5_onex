.class Lcom/android/camera/component/MainBar$12;
.super Lcom/android/camera/trigger/Trigger;
.source "MainBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/component/MainBar;->initializeOverride()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/component/MainBar;


# direct methods
.method constructor <init>(Lcom/android/camera/component/MainBar;Lcom/android/camera/property/Property;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    invoke-direct {p0, p2, p3}, Lcom/android/camera/trigger/Trigger;-><init>(Lcom/android/camera/property/Property;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onEnter()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$200(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_ScenesButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$200(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->clearAnimation()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$100(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_SettingsButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$100(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->clearAnimation()V

    :cond_1
    iget-object v0, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$1300(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_SwitchButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$1300(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->clearAnimation()V

    :cond_2
    iget-object v0, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$1400(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_FlashButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$1400(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->clearAnimation()V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_IsoButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$IsoButton(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_IsoButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$IsoButton(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->clearAnimation()V

    :cond_4
    iget-object v0, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_WbButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$WbButton(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    #getter for: Lcom/android/camera/component/MainBar;->m_WbButton:Lcom/htc/widget/HtcIconButton;
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$WbButton(Lcom/android/camera/component/MainBar;)Lcom/htc/widget/HtcIconButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcIconButton;->clearAnimation()V

    :cond_5
    return-void
.end method

.method protected onExit()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/component/MainBar$12;->this$0:Lcom/android/camera/component/MainBar;

    #calls: Lcom/android/camera/component/MainBar;->closePopup()V
    invoke-static {v0}, Lcom/android/camera/component/MainBar;->access$1100(Lcom/android/camera/component/MainBar;)V

    return-void
.end method
