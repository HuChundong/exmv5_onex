.class public Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle$UploadKeyEventTask;
.super Landroid/os/AsyncTask;
.source "HtcPhoneWindowManagerExtention.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadKeyEventTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;)V
    .locals 0
    .parameter

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle$UploadKeyEventTask;->this$1:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 251
    aget-object v1, p1, v4

    if-eqz v1, :cond_0

    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 252
    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 262
    :goto_0
    return-object v1

    .line 254
    :cond_1
    const-string v1, "HtcPhoneWindowManagerExtention"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadKeyEvent: upload data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 256
    .local v0, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "system_server"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "virtual_key"

    invoke-interface {v1, v2}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v1

    const-string v2, "press_count"

    aget-object v3, p1, v4

    invoke-interface {v1, v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 260
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 261
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 262
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 247
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle$UploadKeyEventTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
