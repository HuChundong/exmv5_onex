.class Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;
.super Ljava/lang/Object;
.source "HtcPhoneWindowManagerExtention.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogKeyCodeHandle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle$UploadKeyEventTask;
    }
.end annotation


# instance fields
.field private final KEYLOG_UPLOAD_DURATION:I

.field private lastLogTime:J

.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;)V
    .locals 2
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->this$0:Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const v0, 0x5265c00

    iput v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->KEYLOG_UPLOAD_DURATION:I

    .line 156
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->lastLogTime:J

    .line 247
    return-void
.end method


# virtual methods
.method public decreaseKeyCount(I)V
    .locals 4
    .parameter "keyCode"

    .prologue
    .line 204
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->mMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->mMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 207
    .local v0, times:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->mMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->mMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public isLogging(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyEvent"

    .prologue
    .line 161
    const/4 v1, 0x0

    .line 162
    .local v1, ret:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 163
    .local v0, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/16 v2, 0xbb

    if-eq v0, v2, :cond_0

    const/16 v2, 0x52

    if-eq v0, v2, :cond_0

    const/16 v2, 0xe3

    if-ne v0, v2, :cond_1

    .line 170
    :cond_0
    const/4 v1, 0x1

    .line 173
    :cond_1
    return v1
.end method

.method public isUploadData()Z
    .locals 4

    .prologue
    .line 218
    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->mMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->mMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 220
    .local v0, ret:Z
    :goto_0
    invoke-static {}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtcPhoneWindowManagerExtention"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUploadData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    return v0

    .line 218
    .end local v0           #ret:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyEvent"

    .prologue
    const/4 v2, 0x0

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->isLogging(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 197
    :goto_0
    return v2

    .line 179
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->mMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 180
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->mMap:Ljava/util/HashMap;

    .line 182
    :cond_1
    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 183
    .local v1, times:Ljava/lang/Integer;
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 184
    .local v0, keyCode:I
    invoke-static {}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$100()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "HtcPhoneWindowManagerExtention"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "logKeyEvent: Key Event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->mMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #times:Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .line 188
    .restart local v1       #times:Ljava/lang/Integer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_4

    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 189
    :cond_4
    iget-object v2, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->mMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-wide v2, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->lastLogTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_6

    .line 192
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->lastLogTime:J

    .line 197
    :cond_5
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 194
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->lastLogTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->uploadKeyEvent()V

    goto :goto_1
.end method

.method public uploadKeyEvent()V
    .locals 8

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->isUploadData()Z

    move-result v5

    if-nez v5, :cond_0

    .line 244
    :goto_0
    return-void

    .line 227
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 230
    .local v1, isFirstEntry:Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 231
    .local v2, keyCode:Ljava/lang/Integer;
    if-nez v1, :cond_1

    .line 232
    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const/4 v1, 0x0

    goto :goto_1

    .line 238
    .end local v2           #keyCode:Ljava/lang/Integer;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, uploadData:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->mMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 240
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;->lastLogTime:J

    .line 242
    invoke-static {}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention;->access$100()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "HtcPhoneWindowManagerExtention"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "uploadKeyEvent: upload data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_3
    new-instance v5, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle$UploadKeyEventTask;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle$UploadKeyEventTask;-><init>(Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/HtcPhoneWindowManagerExtention$LogKeyCodeHandle$UploadKeyEventTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
