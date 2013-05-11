.class Lcom/android/internal/os/storage/ExternalStorageFormatter$3;
.super Ljava/lang/Thread;
.source "ExternalStorageFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateProgressState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

.field final synthetic val$extStoragePath:Ljava/lang/String;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/internal/os/storage/ExternalStorageFormatter;Landroid/os/storage/IMountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iput-object p2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iput-object p3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 498
    const/4 v1, 0x0

    .line 500
    .local v1, success:Z
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v3, v4}, Landroid/os/storage/IMountService;->formatVolume(Ljava/lang/String;)I

    move-result v3

    #setter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I
    invoke-static {v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$002(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)I

    .line 501
    const-string v2, "ExternalStorageFormatter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "format path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    const/4 v1, 0x1

    .line 508
    :goto_0
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v2

    if-ne v2, v7, :cond_b

    .line 510
    :cond_0
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #calls: Lcom/android/internal/os/storage/ExternalStorageFormatter;->formatNextStorage()Z
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$400(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v2

    if-ne v2, v5, :cond_2

    .line 511
    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 512
    const-string v2, "ExternalStorageFormatter"

    const-string v3, "updateProgressState - need to format next storage......"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_1
    :goto_1
    return-void

    .line 503
    :catch_0
    move-exception v0

    .line 504
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    const v3, 0x1040498

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 517
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 518
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 520
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_1

    .line 524
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 529
    :goto_2
    invoke-static {}, Landroid/os/Environment;->hasRemovableStorageSlot()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 531
    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 532
    const-string v2, "ExternalStorageFormatter"

    const-string v3, "updateProgressState - finish 2 cards formatting..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_4
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #calls: Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V
    invoke-static {v2, v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)V

    goto :goto_1

    .line 525
    :catch_1
    move-exception v0

    .line 526
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ExternalStorageFormatter"

    const-string v3, "Failed talking with mount service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 538
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    invoke-static {}, Landroid/os/Environment;->hasPhoneStorage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 540
    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 541
    const-string v2, "ExternalStorageFormatter"

    const-string v3, "updateProgressState - finish 2 cards formatting with phone storage..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_6
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$700(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v4

    #calls: Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;IIZ)V

    .line 545
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto :goto_1

    .line 547
    :cond_7
    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 549
    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 550
    const-string v2, "ExternalStorageFormatter"

    const-string v3, "updateProgressState - finish internal card formatting..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_8
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$700(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v4

    #calls: Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;IIZ)V

    .line 554
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_1

    .line 558
    :cond_9
    invoke-static {}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$500()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 559
    const-string v2, "ExternalStorageFormatter"

    const-string v3, "updateProgressState - finish external card formatting..."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_a
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFormatSequence:I
    invoke-static {v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$700(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mCurrentStorageResult:I
    invoke-static {v4}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$000(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v4

    #calls: Lcom/android/internal/os/storage/ExternalStorageFormatter;->updateReplyResult(IIZ)V
    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$200(Lcom/android/internal/os/storage/ExternalStorageFormatter;IIZ)V

    .line 563
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_1

    .line 569
    :cond_b
    if-eqz v1, :cond_c

    .line 570
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mFactoryReset:Z
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$800(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 571
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 573
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_1

    .line 579
    :cond_c
    if-nez v1, :cond_d

    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->mAlwaysReset:Z
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$900(Lcom/android/internal/os/storage/ExternalStorageFormatter;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 580
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MASTER_CLEAR"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendBroadcast(Landroid/content/Intent;)V

    .line 590
    :goto_3
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #getter for: Lcom/android/internal/os/storage/ExternalStorageFormatter;->htcFormatAction:I
    invoke-static {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$100(Lcom/android/internal/os/storage/ExternalStorageFormatter;)I

    move-result v2

    if-ne v2, v5, :cond_e

    .line 591
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    #calls: Lcom/android/internal/os/storage/ExternalStorageFormatter;->sendFirstCheckMountMessage(I)V
    invoke-static {v2, v6}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->access$600(Lcom/android/internal/os/storage/ExternalStorageFormatter;I)V

    goto/16 :goto_1

    .line 583
    :cond_d
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v3, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->val$extStoragePath:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 584
    :catch_2
    move-exception v0

    .line 585
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v2, "ExternalStorageFormatter"

    const-string v3, "Failed talking with mount service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 595
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_e
    iget-object v2, p0, Lcom/android/internal/os/storage/ExternalStorageFormatter$3;->this$0:Lcom/android/internal/os/storage/ExternalStorageFormatter;

    invoke-virtual {v2}, Lcom/android/internal/os/storage/ExternalStorageFormatter;->stopSelf()V

    goto/16 :goto_1
.end method
