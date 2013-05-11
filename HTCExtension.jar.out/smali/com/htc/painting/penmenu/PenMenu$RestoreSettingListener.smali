.class Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;
.super Ljava/lang/Object;
.source "PenMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/painting/penmenu/PenMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RestoreSettingListener"
.end annotation


# instance fields
.field mPenMenu:Lcom/htc/painting/penmenu/PenMenu;


# direct methods
.method public constructor <init>(Lcom/htc/painting/penmenu/PenMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 4070
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4071
    iput-object p1, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    .line 4072
    return-void
.end method


# virtual methods
.method public onRestoreFinish(I)V
    .locals 2
    .parameter "token"

    .prologue
    .line 4075
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 4076
    const-string v0, "PenMenu"

    const-string v1, "RestoreSettingListener - onRestoreFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4078
    :cond_0
    iget-object v0, p0, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;->mPenMenu:Lcom/htc/painting/penmenu/PenMenu;

    new-instance v1, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener$1;

    invoke-direct {v1, p0, p1}, Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener$1;-><init>(Lcom/htc/painting/penmenu/PenMenu$RestoreSettingListener;I)V

    invoke-virtual {v0, v1}, Lcom/htc/painting/penmenu/PenMenu;->post(Ljava/lang/Runnable;)Z

    .line 4104
    return-void
.end method
