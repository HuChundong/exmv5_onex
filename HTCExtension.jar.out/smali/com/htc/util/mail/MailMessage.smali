.class public Lcom/htc/util/mail/MailMessage;
.super Ljava/lang/Object;
.source "MailMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/MailMessage$Status;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final FILTER_QUERY_ORIGINATOR:I = 0x8

.field public static final FILTER_QUERY_PERIOD:I = 0x1

.field public static final FILTER_QUERY_PRIORITY:I = 0x10

.field public static final FILTER_QUERY_READ_STATUS:I = 0x2

.field public static final FILTER_QUERY_RECIPIENT:I = 0x4

.field public static final GET_STRING_FIRST_SIZE:I = 0x1388

.field public static final GET_STRING_FIRST_SIZE_3LINES:I = 0x1388

.field public static final GET_STRING_MAX_SIZE:I = 0x100000

.field public static final GET_STRING_MAX_SIZE_3LINES:I = 0x100000

.field private static final MAIL_BODY_TYPE_HTML:I = 0x1

.field private static final MAIL_BODY_TYPE_PLAIN_TEXT:I = 0x0

.field private static final MAIL_BODY_TYPE_UNKNOWN:I = -0x1

.field public static final MAIL_PRIORITY_FILTER_HIGH:I = 0x4

.field public static final MAIL_PRIORITY_FILTER_LOW:I = 0x1

.field public static final MAIL_PRIORITY_FILTER_NORMAL:I = 0x2

.field public static final MAIL_PRIORITY_FILTER_NO_FILTERING:I = 0x0

.field public static final MAIL_PRIORITY_HIGH:I = 0x2

.field public static final MAIL_PRIORITY_LOW:I = 0x0

.field public static final MAIL_PRIORITY_NORMAL:I = 0x1

.field public static final MAIL_READ_STATUS_NO_FILTERING:I = -0x1

.field public static final MAIL_READ_STATUS_READED:I = 0x0

.field public static final MAIL_READ_STATUS_UNREADED:I = 0x1

.field public static final MAIL_SEND_TYPE_BCC:I = 0x2

.field public static final MAIL_SEND_TYPE_CC:I = 0x1

.field public static final MAIL_SEND_TYPE_TO:I = 0x0

.field private static final RETRY_COUNT:I = 0x5

.field public static final Rfc2822_READ:I = 0x1

.field public static final SAVE_MAIL_TEXT_SIZE:I = 0x140

.field public static final SAVE_MAIL_TEXT_SIZE_3LINES:I = 0xc8

.field public static final STRING_SATISFY_SIZE:I = 0x1f4

.field public static final STRING_SATISFY_SIZE_3LINES:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "MailObject.MailMessage"


# instance fields
.field private mAccountId:J

.field private mAttachmentIncluted:I

.field private mAttachments:[Lcom/htc/util/mail/Attachment;

.field private mBccAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBody:Ljava/lang/String;

.field private mCcAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFlag:I

.field private mFolderId:J

.field private mIsForRead:Z

.field private mIsReaded:Z

.field private mMailBodyType:I

.field private mMessageId:J

.field private mMessageSize:I

.field private mPriority:I

.field private mSenderAddress:Ljava/lang/String;

.field private mSenderName:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mTime:Ljava/util/Date;

.field private mToAddresses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/MailMessage;->DEBUG:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;JJJLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZIIIILjava/util/Date;)V
    .locals 3
    .parameter "context"
    .parameter "accountId"
    .parameter "folderId"
    .parameter "messageId"
    .parameter "senderName"
    .parameter "senderAddress"
    .parameter
    .parameter
    .parameter
    .parameter "subject"
    .parameter "body"
    .parameter "isReaded"
    .parameter "flag"
    .parameter "priority"
    .parameter "messageSize"
    .parameter "attachmentIncluded"
    .parameter "time"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIIII",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 869
    .local p10, toAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p11, ccAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p12, bccAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    .line 49
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    .line 50
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/util/mail/MailMessage;->mAccountId:J

    .line 51
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/util/mail/MailMessage;->mFolderId:J

    .line 52
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    .line 53
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    .line 54
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mSenderAddress:Ljava/lang/String;

    .line 55
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mAttachments:[Lcom/htc/util/mail/Attachment;

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    .line 57
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    .line 58
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    .line 59
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mSubject:Ljava/lang/String;

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mBody:Ljava/lang/String;

    .line 67
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/util/mail/MailMessage;->mMailBodyType:I

    .line 872
    iput-object p1, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    .line 873
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    .line 874
    iput-wide p2, p0, Lcom/htc/util/mail/MailMessage;->mAccountId:J

    .line 875
    iput-wide p4, p0, Lcom/htc/util/mail/MailMessage;->mFolderId:J

    .line 876
    iput-wide p6, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    .line 877
    iput-object p8, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    .line 878
    iput-object p9, p0, Lcom/htc/util/mail/MailMessage;->mSenderAddress:Ljava/lang/String;

    .line 879
    if-eqz p10, :cond_0

    invoke-virtual {p10}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    .line 880
    :cond_0
    if-eqz p11, :cond_1

    invoke-virtual {p11}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    .line 881
    :cond_1
    if-eqz p12, :cond_2

    invoke-virtual {p12}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    .line 882
    :cond_2
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSubject:Ljava/lang/String;

    .line 883
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBody:Ljava/lang/String;

    .line 884
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsReaded:Z

    .line 885
    move/from16 v0, p16

    iput v0, p0, Lcom/htc/util/mail/MailMessage;->mFlag:I

    .line 886
    move/from16 v0, p17

    iput v0, p0, Lcom/htc/util/mail/MailMessage;->mPriority:I

    .line 887
    move/from16 v0, p18

    iput v0, p0, Lcom/htc/util/mail/MailMessage;->mMessageSize:I

    .line 888
    move/from16 v0, p19

    iput v0, p0, Lcom/htc/util/mail/MailMessage;->mAttachmentIncluted:I

    .line 889
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/htc/util/mail/MailMessage;->mTime:Ljava/util/Date;

    .line 891
    iget-object v1, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    .line 892
    :cond_3
    iget-object v1, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    .line 893
    :cond_4
    iget-object v1, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    if-nez v1, :cond_5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    .line 895
    :cond_5
    return-void
.end method

.method private buildAddressString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, src:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    const-string v3, ""

    .line 565
    :goto_0
    return-object v3

    .line 557
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_0

    .line 559
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 560
    .local v1, s:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 561
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_2

    .line 562
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 563
    :cond_2
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static buildMessageForSend(Landroid/content/Context;J)Lcom/htc/util/mail/MailMessage;
    .locals 21
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 801
    invoke-static {}, Lcom/htc/util/mail/MailManager;->getCombinedAccountId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 804
    invoke-static/range {p0 .. p0}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/util/mail/MailManager;->getDefaultAccountId()J

    move-result-wide p1

    .line 807
    :cond_0
    new-instance v0, Lcom/htc/util/mail/MailMessage;

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    invoke-direct/range {v0 .. v20}, Lcom/htc/util/mail/MailMessage;-><init>(Landroid/content/Context;JJJLjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;ZIIIILjava/util/Date;)V

    .line 825
    .local v0, msg:Lcom/htc/util/mail/MailMessage;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    .line 826
    return-object v0
.end method

.method private getMailBody(I)Ljava/lang/String;
    .locals 13
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "substr(_text, 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 337
    .local v10, substr:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    aput-object v10, v2, v4

    const/4 v0, 0x1

    const-string v1, "_mimetype"

    aput-object v1, v2, v0

    .line 338
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v11, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( _mimetype=\'text/plain\' OR _mimetype=\'text/html\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 339
    .local v3, where:Ljava/lang/String;
    const-string v5, "_mimetype"

    .line 340
    .local v5, order:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->sPartsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 341
    .local v7, c:Landroid/database/Cursor;
    const-string v6, ""

    .line 342
    .local v6, body:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 346
    if-nez v6, :cond_0

    .line 347
    const-string v6, ""

    .line 348
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 350
    .local v9, length:I
    invoke-static {v6}, Lcom/htc/util/mail/MailUtils;->convertHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/MailMessage;->mMailBodyType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .end local v9           #length:I
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 364
    :cond_2
    return-object v6

    .line 358
    :catch_0
    move-exception v8

    .line 359
    .local v8, ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    const-string v6, ""

    goto :goto_0
.end method

.method private getMailBody3Lines(I)Ljava/lang/String;
    .locals 13
    .parameter "size"

    .prologue
    const/4 v4, 0x0

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "substr(_text, 0, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 370
    .local v10, substr:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    aput-object v10, v2, v4

    const/4 v0, 0x1

    const-string v1, "_mimetype"

    aput-object v1, v2, v0

    .line 371
    .local v2, projection:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v11, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND ( _mimetype=\'text/plain\' OR _mimetype=\'text/html\' )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    .local v3, where:Ljava/lang/String;
    const-string v5, "_mimetype"

    .line 373
    .local v5, order:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/htc/util/mail/MailUtils;->sPartsURI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 374
    .local v7, c:Landroid/database/Cursor;
    const-string v6, ""

    .line 375
    .local v6, body:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 379
    if-nez v6, :cond_0

    .line 380
    const-string v6, ""

    .line 382
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    .line 383
    .local v9, length:I
    invoke-static {v6}, Lcom/htc/util/mail/MailUtils;->convertHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 384
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/util/mail/MailMessage;->mMailBodyType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    .end local v9           #length:I
    :cond_1
    :goto_0
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 398
    :cond_2
    return-object v6

    .line 392
    :catch_0
    move-exception v8

    .line 393
    .local v8, ex:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 394
    const-string v6, ""

    goto :goto_0
.end method

.method private saveMail(Z)Landroid/net/Uri;
    .locals 13
    .parameter "isToDraft"

    .prologue
    const/4 v9, 0x0

    const/4 v12, 0x0

    .line 898
    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v5

    .line 899
    .local v5, mailAccount:Lcom/htc/util/mail/MailAccount;
    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->isCombinedAccount()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 900
    iget-object v8, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/util/mail/MailManager;->getDefaultAccount()Lcom/htc/util/mail/MailAccount;

    move-result-object v5

    .line 902
    :cond_0
    invoke-virtual {p0, v12}, Lcom/htc/util/mail/MailMessage;->getAddressString(I)Ljava/lang/String;

    move-result-object v2

    .line 903
    .local v2, _to:Ljava/lang/String;
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/htc/util/mail/MailMessage;->getAddressString(I)Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, _cc:Ljava/lang/String;
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lcom/htc/util/mail/MailMessage;->getAddressString(I)Ljava/lang/String;

    move-result-object v0

    .line 906
    .local v0, _bcc:Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 908
    .local v3, cv:Landroid/content/ContentValues;
    const-string v10, "_uid"

    move-object v8, v9

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v3, v10, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string v8, "_from"

    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    const-string v8, "_fromEmail"

    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->getEmailAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    const-string v8, "_subject"

    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getSubject()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const-string v8, "_to"

    invoke-virtual {v3, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    const-string v8, "_cc"

    invoke-virtual {v3, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    const-string v8, "_bcc"

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    const-string v8, "_account"

    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 916
    const-string v8, "_flags"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 917
    const-string v8, "_read"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 918
    const-string v8, "_date"

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/util/Date;->getSeconds()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 919
    const-string v8, "_internaldate"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 921
    if-eqz p1, :cond_3

    .line 922
    const-string v8, "_mailboxId"

    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->getDraftFolderId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 928
    :goto_0
    const-string v8, "_to"

    invoke-virtual {v3, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v8, "_cc"

    invoke-virtual {v3, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v8, "_bcc"

    invoke-virtual {v3, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v8, "_messageid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "@mail.android.htc.com"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v8, "_sync"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 933
    const-string v8, "_local"

    const-string v10, "1"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string v8, "_importance"

    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getPriority()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 937
    const/4 v6, 0x0

    .line 938
    .local v6, references:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 939
    const-string v8, "_references"

    invoke-virtual {v3, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :cond_1
    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->getProtocol()I

    move-result v8

    const/4 v10, 0x4

    if-ne v8, v10, :cond_2

    .line 952
    const-string v8, "_notaddTrack"

    const-string v10, "100"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-string v8, "_messageClass"

    const-string v10, "IPM.Note"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string v8, "_allDayEvent"

    const-string v10, "0"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    const-string v8, "_responseRequested"

    const-string v10, "0"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v8, "_sensitivity"

    const-string v10, "0"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const-string v8, "_synckey"

    const-string v10, "0"

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const-string v8, "_smartCommand"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 959
    const-string v8, "_refMsgId"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 964
    :cond_2
    :try_start_0
    iget-object v8, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v10, Lcom/htc/util/mail/MailUtils;->sMessagesURI:Landroid/net/Uri;

    invoke-virtual {v8, v10, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 969
    .local v7, uri:Landroid/net/Uri;
    :goto_1
    if-nez v7, :cond_4

    .line 979
    :goto_2
    return-object v9

    .line 924
    .end local v6           #references:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_3
    const-string v8, "_mailboxId"

    invoke-virtual {v5}, Lcom/htc/util/mail/MailAccount;->getOutFolderId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 925
    const-string v8, "_retryCount"

    const/4 v10, 0x5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 965
    .restart local v6       #references:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 966
    .local v4, e:Ljava/lang/Exception;
    const/4 v7, 0x0

    .line 967
    .restart local v7       #uri:Landroid/net/Uri;
    const-string v8, "MailObject.MailMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "saveMessage() Exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 971
    .end local v4           #e:Ljava/lang/Exception;
    :cond_4
    sget-boolean v8, Lcom/htc/util/mail/MailMessage;->DEBUG:Z

    if-eqz v8, :cond_5

    .line 972
    const-string v8, "MailObject.MailMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SaveMail:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_5
    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    .line 976
    iget-wide v8, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    invoke-direct {p0, v7, v8, v9}, Lcom/htc/util/mail/MailMessage;->saveParts(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    move-object v9, v7

    .line 979
    goto :goto_2
.end method

.method private saveParts(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 20
    .parameter "newMessageUri"
    .parameter "newMessageId"

    .prologue
    .line 1006
    const-string v12, "parts"

    .line 1008
    .local v12, table:Ljava/lang/String;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1010
    .local v9, cv:Landroid/content/ContentValues;
    const/16 v16, 0x0

    .line 1011
    .local v16, uri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 1013
    .local v10, hasMeeting:Z
    const/4 v13, 0x0

    .line 1015
    .local v13, totalAttachmentSizeByByte:I
    const/4 v11, 0x0

    .line 1020
    .local v11, messageSize:I
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/util/mail/MailMessage;->mMailBodyType:I

    .line 1021
    const-string v7, "text/plain"

    .line 1022
    .local v7, _mimetype:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/util/mail/MailMessage;->getBody()Ljava/lang/String;

    move-result-object v8

    .line 1024
    .local v8, _text:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v17

    add-int v11, v11, v17

    .line 1026
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1027
    .local v6, _message:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/util/mail/MailMessage;->mAccountId:J

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1028
    .local v4, _account:Ljava/lang/Long;
    const/4 v5, 0x0

    .line 1030
    .local v5, _flags:I
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 1031
    const-string v17, "_mimetype"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    const-string v17, "_text"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    const-string v17, "_message"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1034
    const-string v17, "_account"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1035
    const-string v17, "_flags"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "content://mail/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 1039
    if-nez v16, :cond_0

    .line 1051
    :goto_0
    return-object v16

    .line 1042
    :cond_0
    add-int v17, v11, v13

    move/from16 v0, v17

    int-to-long v14, v0

    .line 1043
    .local v14, totalMessageSize:J
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 1044
    const-string v17, "_incAttachment"

    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1045
    const-string v17, "_readsize"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1046
    const-string v17, "_readtotalsize"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1047
    const-string v17, "_downloadtotalsize"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1048
    const-string v17, "_messagesize"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addAddress(ILjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, can\'t add address"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 518
    :cond_0
    if-nez p1, :cond_2

    .line 519
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_1
    :goto_0
    return-void

    .line 520
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 521
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 522
    :cond_3
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 523
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addAttachment(Lcom/htc/util/mail/Attachment;)V
    .locals 2
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 748
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, attachment can\'t be added."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    return-void
.end method

.method public deleteAddress(ILjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "address"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 578
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, can\'t delete address on mail retrieving."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_0
    if-nez p1, :cond_2

    .line 581
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 586
    :cond_1
    :goto_0
    return-void

    .line 582
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 583
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 584
    :cond_3
    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public deleteAttachment(Lcom/htc/util/mail/Attachment;)V
    .locals 2
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 760
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, attachment can\'t be deleted."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_0
    return-void
.end method

.method public downloadAttachment(ILjava/lang/String;Lcom/htc/util/mail/IMailMessageListener;)V
    .locals 2
    .parameter "attachmentIndex"
    .parameter "localFileName"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "It\'s not applicable for sending mail."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_0
    return-void
.end method

.method public getAccount()Lcom/htc/util/mail/MailAccount;
    .locals 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/util/mail/MailManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/mail/MailManager;

    move-result-object v0

    iget-wide v1, p0, Lcom/htc/util/mail/MailMessage;->mAccountId:J

    invoke-virtual {v0, v1, v2}, Lcom/htc/util/mail/MailManager;->getAccount(J)Lcom/htc/util/mail/MailAccount;

    move-result-object v0

    return-object v0
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 411
    iget-wide v0, p0, Lcom/htc/util/mail/MailMessage;->mAccountId:J

    return-wide v0
.end method

.method public getAddressString(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 545
    if-nez p1, :cond_0

    .line 546
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->buildAddressString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 552
    :goto_0
    return-object v0

    .line 547
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    .line 548
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->buildAddressString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 549
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 550
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->buildAddressString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 552
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public getAddresses(I)Ljava/util/ArrayList;
    .locals 2
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    .line 502
    :goto_0
    return-object v0

    .line 501
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    goto :goto_0

    .line 502
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    goto :goto_0

    .line 503
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not avaliable type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAttachments()[Lcom/htc/util/mail/Attachment;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mAttachments:[Lcom/htc/util/mail/Attachment;

    return-object v0
.end method

.method public getAttachmentsSize()I
    .locals 1

    .prologue
    .line 1071
    const/4 v0, 0x0

    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBody:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 622
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getMailBody()Ljava/lang/String;

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBody:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 629
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mBody:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFolderId()J
    .locals 2

    .prologue
    .line 434
    iget-wide v0, p0, Lcom/htc/util/mail/MailMessage;->mFolderId:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 533
    iget-wide v0, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    return-wide v0
.end method

.method public getMailBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    const/high16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->getMailBody(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMailBody3Lines()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    const/high16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->getMailBody3Lines(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMailStatus()Lcom/htc/util/mail/MailMessage$Status;
    .locals 2

    .prologue
    .line 286
    new-instance v0, Lcom/htc/util/mail/MailMessage$Status;

    invoke-direct {v0, p0}, Lcom/htc/util/mail/MailMessage$Status;-><init>(Lcom/htc/util/mail/MailMessage;)V

    .line 287
    .local v0, status:Lcom/htc/util/mail/MailMessage$Status;
    iget v1, p0, Lcom/htc/util/mail/MailMessage;->mFlag:I

    iput v1, v0, Lcom/htc/util/mail/MailMessage$Status;->mFlag:I

    .line 288
    iget-boolean v1, p0, Lcom/htc/util/mail/MailMessage;->mIsReaded:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/htc/util/mail/MailMessage$Status;->mIsUnread:Z

    .line 289
    return-object v0

    .line 288
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMessageId()J
    .locals 2

    .prologue
    .line 445
    iget-wide v0, p0, Lcom/htc/util/mail/MailMessage;->mMessageId:J

    return-wide v0
.end method

.method public getMessageTime()Ljava/util/Date;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-nez v0, :cond_0

    .line 722
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "It\'s not applicable for sending mail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 696
    iget v0, p0, Lcom/htc/util/mail/MailMessage;->mPriority:I

    return v0
.end method

.method public getSenderAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 456
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderAddress:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSenderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 467
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSenderNameOrAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderAddress:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 484
    :goto_0
    return-object v0

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderAddress:Ljava/lang/String;

    goto :goto_0

    .line 483
    :cond_2
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    goto :goto_0

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSenderName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1061
    iget v0, p0, Lcom/htc/util/mail/MailMessage;->mMessageSize:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSubject:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 597
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mSubject:Ljava/lang/String;

    goto :goto_0
.end method

.method public isMessageReaded()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-nez v0, :cond_0

    .line 654
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Message read status is not applicable for sending mail"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsReaded:Z

    return v0
.end method

.method public isPlainText()Z
    .locals 2

    .prologue
    .line 1081
    iget v0, p0, Lcom/htc/util/mail/MailMessage;->mMailBodyType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1082
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getMailBody()Ljava/lang/String;

    .line 1087
    :cond_0
    iget v0, p0, Lcom/htc/util/mail/MailMessage;->mMailBodyType:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isProtected()Z
    .locals 1

    .prologue
    .line 1107
    const/4 v0, 0x0

    return v0
.end method

.method public isSent()Z
    .locals 1

    .prologue
    .line 1097
    const/4 v0, 0x0

    return v0
.end method

.method public release()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1117
    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mAttachments:[Lcom/htc/util/mail/Attachment;

    if-eqz v4, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/htc/util/mail/MailMessage;->mAttachments:[Lcom/htc/util/mail/Attachment;

    .local v0, arr$:[Lcom/htc/util/mail/Attachment;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 1119
    .local v1, attach:Lcom/htc/util/mail/Attachment;
    invoke-virtual {v1}, Lcom/htc/util/mail/Attachment;->release()V

    .line 1118
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1120
    .end local v1           #attach:Lcom/htc/util/mail/Attachment;
    :cond_0
    iput-object v5, p0, Lcom/htc/util/mail/MailMessage;->mAttachments:[Lcom/htc/util/mail/Attachment;

    .line 1123
    .end local v0           #arr$:[Lcom/htc/util/mail/Attachment;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 1124
    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1125
    iput-object v5, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    .line 1128
    :cond_2
    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1129
    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1130
    iput-object v5, p0, Lcom/htc/util/mail/MailMessage;->mCcAddresses:Ljava/util/ArrayList;

    .line 1133
    :cond_3
    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    .line 1134
    iget-object v4, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1135
    iput-object v5, p0, Lcom/htc/util/mail/MailMessage;->mBccAddresses:Ljava/util/ArrayList;

    .line 1137
    :cond_4
    return-void
.end method

.method public saveMailToOutBox()Landroid/net/Uri;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 999
    iget-object v1, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1002
    :cond_0
    :goto_0
    return-object v0

    .line 1000
    :cond_1
    iget-object v1, p0, Lcom/htc/util/mail/MailMessage;->mToAddresses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->saveMail(Z)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public saveMailtoDraft()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 989
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/util/mail/MailMessage;->saveMail(Z)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 2
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 641
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, body can\'t be set on mail retrieving."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 642
    :cond_0
    iput-object p1, p0, Lcom/htc/util/mail/MailMessage;->mBody:Ljava/lang/String;

    .line 643
    return-void
.end method

.method public setMessageReaded(Z)V
    .locals 7
    .parameter "isReaded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 666
    iget-boolean v2, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-nez v2, :cond_0

    .line 667
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Set read is not applicable for sending mail"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 669
    :cond_0
    iput-boolean p1, p0, Lcom/htc/util/mail/MailMessage;->mIsReaded:Z

    .line 671
    iget-object v2, p0, Lcom/htc/util/mail/MailMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 674
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz p1, :cond_2

    .line 675
    sget-object v2, Lcom/htc/util/mail/MailUtils;->sSetMessageStatusURI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "read/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getMessageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 677
    .local v0, count:I
    sget-boolean v2, Lcom/htc/util/mail/MailMessage;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 678
    const-string v2, "MailObject.MailMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMessageReaded/read:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :cond_1
    :goto_0
    return-void

    .line 680
    .end local v0           #count:I
    :cond_2
    sget-object v2, Lcom/htc/util/mail/MailUtils;->sSetMessageStatusURI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unread/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/htc/util/mail/MailMessage;->getMessageId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 682
    .restart local v0       #count:I
    sget-boolean v2, Lcom/htc/util/mail/MailMessage;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 683
    const-string v2, "MailObject.MailMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMessageReaded/unread:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setProirity(I)V
    .locals 2
    .parameter "priority"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, priority can\'t be set."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 710
    :cond_0
    iput p1, p0, Lcom/htc/util/mail/MailMessage;->mPriority:I

    .line 711
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 2
    .parameter "subject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/htc/util/mail/MailMessage;->mIsForRead:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Read only, subject can\'t be set on mail retrieving."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    iput-object p1, p0, Lcom/htc/util/mail/MailMessage;->mSubject:Ljava/lang/String;

    .line 612
    return-void
.end method
