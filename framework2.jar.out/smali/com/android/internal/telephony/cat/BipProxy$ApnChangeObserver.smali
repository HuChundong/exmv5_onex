.class Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;
.super Landroid/database/ContentObserver;
.source "BipProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/BipProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/BipProxy;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cat/BipProxy;)V
    .locals 1
    .parameter

    .prologue
    .line 920
    iput-object p1, p0, Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    .line 921
    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mBipHandler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/android/internal/telephony/cat/BipProxy;->access$000(Lcom/android/internal/telephony/cat/BipProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 922
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 926
    invoke-static {}, Lcom/android/internal/telephony/cat/BipProxy;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BIP - ApnChangeObserver: onChange!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mApnObserver:Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$200(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/telephony/cat/BipProxy;->access$300(Lcom/android/internal/telephony/cat/BipProxy;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    #getter for: Lcom/android/internal/telephony/cat/BipProxy;->mApnObserver:Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;
    invoke-static {v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$200(Lcom/android/internal/telephony/cat/BipProxy;)Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 929
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/telephony/cat/BipProxy;->mApnObserver:Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$202(Lcom/android/internal/telephony/cat/BipProxy;Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;)Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;

    .line 932
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/BipProxy$ApnChangeObserver;->this$0:Lcom/android/internal/telephony/cat/BipProxy;

    const/4 v1, 0x1

    #setter for: Lcom/android/internal/telephony/cat/BipProxy;->mApnUpdated:Z
    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/BipProxy;->access$402(Lcom/android/internal/telephony/cat/BipProxy;Z)Z

    .line 933
    return-void
.end method
