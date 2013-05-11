.class Lcom/htc/painting/penmenu/PenMenu$4;
.super Ljava/lang/Object;
.source "PenMenu.java"

# interfaces
.implements Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method constructor <init>(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$4;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOptionChanged(II)V
    .locals 3
    .parameter "menuId"
    .parameter "optionId"

    .prologue
    .line 686
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 687
    const-string v0, "PenMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionChanged - menu id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", option id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$4;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->setUseTime(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 709
    :cond_1
    :goto_0
    return-void

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$4;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    invoke-virtual {v0, p1, p2}, Lcom/htc/painting/penmenu/PenMenu;->changePen(II)V

    .line 696
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$4;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 697
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_3

    .line 698
    const-string v0, "PenMenu"

    const-string v1, "onOptionChanged - notify outer listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 703
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$4;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;->onOptionChanged(II)V

    goto :goto_0

    .line 705
    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$4;->this$0:Lcom/htc/painting/penmenu/PenMenu;

    #getter for: Lcom/htc/painting/penmenu/PenMenu;->mOuterOptionChangedListener:Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;
    invoke-static {v0}, Lcom/htc/painting/penmenu/PenMenu;->access$600(Lcom/htc/painting/penmenu/PenMenu;)Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/htc/painting/penmenu/menu/OnOptionChangedListener;->onOptionChanged(II)V

    goto :goto_0
.end method

.method public onOptionInitialized()V
    .locals 0

    .prologue
    .line 713
    return-void
.end method
