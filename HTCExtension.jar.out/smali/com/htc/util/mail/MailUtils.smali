.class public Lcom/htc/util/mail/MailUtils;
.super Ljava/lang/Object;
.source "MailUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/util/mail/MailUtils$ContactInfo;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MailUtils"

.field public static final allUnreadMailURI:Landroid/net/Uri;

.field public static final sACCOUNT_PROJECTION:[Ljava/lang/String;

.field public static final sAccountsURI:Landroid/net/Uri;

.field public static final sDelMailURI:Landroid/net/Uri;

.field public static final sFOLDER_INFO_PROJECTION:[Ljava/lang/String;

.field public static final sMAIL_PROJECTION:[Ljava/lang/String;

.field public static final sMESSAGE_STATUS_PROJECTION:[Ljava/lang/String;

.field public static final sMailBoxURI:Landroid/net/Uri;

.field public static final sMessagesURI:Landroid/net/Uri;

.field public static final sPROVIDER_PROJECTION:[Ljava/lang/String;

.field public static final sPartsURI:Landroid/net/Uri;

.field public static final sProvidersURI:Landroid/net/Uri;

.field public static final sSetMessageStatusURI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    sget-boolean v0, Lcom/htc/util/mail/MailManager;->MAIL_OBJ_DEBUG:Z

    sput-boolean v0, Lcom/htc/util/mail/MailUtils;->DEBUG:Z

    .line 49
    const-string v0, "content://mail/providers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sProvidersURI:Landroid/net/Uri;

    .line 54
    const-string v0, "content://mail/messages"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sMessagesURI:Landroid/net/Uri;

    .line 61
    const-string v0, "content://mail/accounts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sAccountsURI:Landroid/net/Uri;

    .line 68
    const-string v0, "content://mail/mailboxs"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sMailBoxURI:Landroid/net/Uri;

    .line 75
    const-string v0, "content://mail/parts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sPartsURI:Landroid/net/Uri;

    .line 82
    const-string v0, "content://mail/allUnreadMail"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->allUnreadMailURI:Landroid/net/Uri;

    .line 89
    const-string v0, "content://mail/setMessageStatus"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sSetMessageStatusURI:Landroid/net/Uri;

    .line 96
    const-string v0, "content://mail/deleteMessage"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sDelMailURI:Landroid/net/Uri;

    .line 101
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_subject"

    aput-object v1, v0, v4

    const-string v1, "_internaldate"

    aput-object v1, v0, v5

    const-string v1, "_from"

    aput-object v1, v0, v6

    const-string v1, "_fromEmail"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_to"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_cc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_bcc"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_read"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_messagesize"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_incAttachment"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_account"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_mailboxId"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_importance"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_mailAct"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "_messageClassInt"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "_subjtype"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sMAIL_PROJECTION:[Ljava/lang/String;

    .line 108
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_provider"

    aput-object v1, v0, v4

    const-string v1, "_domain"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sPROVIDER_PROJECTION:[Ljava/lang/String;

    .line 115
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_name"

    aput-object v1, v0, v4

    const-string v1, "_desc"

    aput-object v1, v0, v5

    const-string v1, "_protocol"

    aput-object v1, v0, v6

    const-string v1, "_defaultfolderId"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_trashfolderId"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sentfolderId"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_draftfolderId"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_outfolderId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_emailaddress"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_defaultaccount"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_colorIdx"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 122
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_flags"

    aput-object v1, v0, v4

    const-string v1, "_read"

    aput-object v1, v0, v5

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sMESSAGE_STATUS_PROJECTION:[Ljava/lang/String;

    .line 129
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_decodename"

    aput-object v1, v0, v4

    const-string v1, "_shortname"

    aput-object v1, v0, v5

    const-string v1, "_defaultfolder"

    aput-object v1, v0, v6

    const-string v1, "_account"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_serverid"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_parentid"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/mail/MailUtils;->sFOLDER_INFO_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    return-void
.end method

.method public static convertHTMLtoPlainText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "htmlStr"

    .prologue
    .line 259
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/util/mail/MailUtils;->convertHTMLtoPlainText(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static convertHTMLtoPlainText(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 32
    .parameter "htmlStr"
    .parameter "filter"

    .prologue
    .line 270
    if-nez p0, :cond_0

    .line 271
    const-string v28, ""

    .line 494
    :goto_0
    return-object v28

    .line 272
    :cond_0
    const-string v9, "UTF-8"

    .line 275
    .local v9, encoding:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 280
    .local v12, htmlBytes:[B
    :goto_1
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v23, v0

    .line 281
    .local v23, rtnBytes:[B
    sget-boolean v28, Lcom/htc/util/mail/MailUtils;->DEBUG:Z

    if-eqz v28, :cond_1

    const-string v28, "MailUtils"

    const-string v29, "converHTMLtoPlainText start..."

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 283
    .local v26, start:J
    const/16 v20, 0xc

    .line 284
    .local v20, maxLines:I
    const/16 v19, 0x258

    .line 285
    .local v19, maxCharacters:I
    const/16 v18, 0x0

    .line 286
    .local v18, line_count:I
    const/4 v5, 0x0

    .line 287
    .local v5, char_count:I
    const/16 v21, 0x0

    .line 288
    .local v21, old_byte:B
    const/16 v24, 0x0

    .line 289
    .local v24, rtnBytes_idx:I
    const/4 v15, 0x0

    .line 290
    .local v15, isTagFound:Z
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v13, v0, :cond_2d

    .line 295
    aget-byte v7, v12, v13

    .line 296
    .local v7, cur_byte:B
    const/16 v28, 0x3c

    move/from16 v0, v28

    if-ne v7, v0, :cond_14

    .line 298
    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_c

    .line 299
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_2

    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x53

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    :cond_2
    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_3

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x54

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    :cond_3
    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x79

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x59

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    :cond_4
    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x4c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    :cond_5
    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x65

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_6

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x45

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_c

    .line 302
    :cond_6
    add-int/lit8 v16, v13, 0x6

    .local v16, j:I
    :goto_3
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_c

    .line 303
    add-int/lit8 v28, v16, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    .line 304
    aget-byte v28, v12, v16

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_7

    aget-byte v28, v12, v16

    const/16 v29, 0x53

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_7
    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_8

    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x54

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_8
    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x79

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_9

    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x59

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_9
    add-int/lit8 v28, v16, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    add-int/lit8 v28, v16, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x4c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_a
    add-int/lit8 v28, v16, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x65

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_b

    add-int/lit8 v28, v16, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x45

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    :cond_b
    add-int/lit8 v28, v16, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_10

    .line 307
    const/16 v7, 0x20

    .line 308
    add-int/lit8 v13, v16, 0x5

    .line 318
    .end local v16           #j:I
    :cond_c
    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_d

    .line 319
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x21

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_d

    .line 320
    add-int/lit8 v16, v13, 0x4

    .restart local v16       #j:I
    :goto_4
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_d

    .line 321
    add-int/lit8 v28, v16, 0x2

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_11

    .line 322
    aget-byte v28, v12, v16

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    add-int/lit8 v28, v16, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x2d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    add-int/lit8 v28, v16, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_11

    .line 323
    const/16 v7, 0x20

    .line 324
    add-int/lit8 v13, v16, 0x2

    .line 335
    .end local v16           #j:I
    :cond_d
    add-int/lit8 v28, v13, 0x1

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_14

    .line 336
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x20

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_14

    .line 337
    const/4 v15, 0x0

    .line 338
    add-int/lit8 v16, v13, 0x1

    .restart local v16       #j:I
    :goto_5
    array-length v0, v12

    move/from16 v28, v0

    move/from16 v0, v16

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    .line 339
    aget-byte v28, v12, v16

    const/16 v29, 0x3e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 340
    const/16 v7, 0x20

    .line 341
    move/from16 v13, v16

    .line 342
    const/4 v15, 0x1

    .line 355
    :cond_e
    if-eqz v15, :cond_14

    .line 290
    .end local v16           #j:I
    :cond_f
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 276
    .end local v5           #char_count:I
    .end local v7           #cur_byte:B
    .end local v12           #htmlBytes:[B
    .end local v13           #i:I
    .end local v15           #isTagFound:Z
    .end local v18           #line_count:I
    .end local v19           #maxCharacters:I
    .end local v20           #maxLines:I
    .end local v21           #old_byte:B
    .end local v23           #rtnBytes:[B
    .end local v24           #rtnBytes_idx:I
    .end local v26           #start:J
    :catch_0
    move-exception v8

    .line 277
    .local v8, e:Ljava/io/UnsupportedEncodingException;
    const/4 v9, 0x0

    .line 278
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    .restart local v12       #htmlBytes:[B
    goto/16 :goto_1

    .line 302
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v5       #char_count:I
    .restart local v7       #cur_byte:B
    .restart local v13       #i:I
    .restart local v15       #isTagFound:Z
    .restart local v16       #j:I
    .restart local v18       #line_count:I
    .restart local v19       #maxCharacters:I
    .restart local v20       #maxLines:I
    .restart local v21       #old_byte:B
    .restart local v23       #rtnBytes:[B
    .restart local v24       #rtnBytes_idx:I
    .restart local v26       #start:J
    :cond_10
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    .line 320
    :cond_11
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 346
    :cond_12
    aget-byte v28, v12, v16

    const/16 v29, 0x3c

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_e

    .line 350
    array-length v0, v12

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_13

    .line 351
    const/16 v7, 0x20

    .line 352
    array-length v13, v12

    .line 338
    :cond_13
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 363
    .end local v16           #j:I
    :cond_14
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_22

    add-int/lit8 v28, v13, 0x7

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_22

    .line 364
    const/4 v6, 0x0

    .line 365
    .local v6, chars_found:I
    const/16 v17, 0x2

    .local v17, k:I
    :goto_7
    const/16 v28, 0x7

    move/from16 v0, v17

    move/from16 v1, v28

    if-gt v0, v1, :cond_15

    .line 366
    add-int v28, v13, v17

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_19

    .line 367
    add-int/lit8 v6, v17, -0x2

    .line 372
    :cond_15
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x23

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_22

    if-lez v6, :cond_22

    .line 374
    const/4 v14, 0x0

    .line 375
    .local v14, intValue:I
    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x78

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_16

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x58

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_1c

    .line 376
    :cond_16
    const/16 v17, 0x1

    :goto_8
    move/from16 v0, v17

    if-gt v0, v6, :cond_1e

    .line 377
    add-int v28, v13, v17

    add-int/lit8 v28, v28, 0x1

    aget-byte v4, v12, v28

    .line 378
    .local v4, b:B
    const/16 v28, 0x30

    move/from16 v0, v28

    if-lt v4, v0, :cond_1a

    const/16 v28, 0x39

    move/from16 v0, v28

    if-gt v4, v0, :cond_1a

    .line 379
    add-int/lit8 v28, v4, -0x30

    add-int v14, v14, v28

    .line 384
    :cond_17
    :goto_9
    move/from16 v0, v17

    if-ge v0, v6, :cond_18

    .line 385
    mul-int/lit8 v14, v14, 0x10

    .line 376
    :cond_18
    add-int/lit8 v17, v17, 0x1

    goto :goto_8

    .line 365
    .end local v4           #b:B
    .end local v14           #intValue:I
    :cond_19
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 380
    .restart local v4       #b:B
    .restart local v14       #intValue:I
    :cond_1a
    const/16 v28, 0x41

    move/from16 v0, v28

    if-lt v4, v0, :cond_1b

    const/16 v28, 0x46

    move/from16 v0, v28

    if-gt v4, v0, :cond_1b

    .line 381
    add-int/lit8 v28, v4, -0x41

    add-int/lit8 v28, v28, 0xa

    add-int v14, v14, v28

    goto :goto_9

    .line 382
    :cond_1b
    const/16 v28, 0x61

    move/from16 v0, v28

    if-lt v4, v0, :cond_17

    const/16 v28, 0x66

    move/from16 v0, v28

    if-gt v4, v0, :cond_17

    .line 383
    add-int/lit8 v28, v4, -0x61

    add-int/lit8 v28, v28, 0xa

    add-int v14, v14, v28

    goto :goto_9

    .line 388
    .end local v4           #b:B
    :cond_1c
    const/16 v17, 0x1

    :goto_a
    move/from16 v0, v17

    if-gt v0, v6, :cond_1e

    .line 389
    add-int v28, v13, v17

    add-int/lit8 v28, v28, 0x1

    aget-byte v28, v12, v28

    add-int/lit8 v28, v28, -0x30

    add-int v14, v14, v28

    .line 390
    move/from16 v0, v17

    if-ge v0, v6, :cond_1d

    .line 391
    mul-int/lit8 v14, v14, 0xa

    .line 388
    :cond_1d
    add-int/lit8 v17, v17, 0x1

    goto :goto_a

    .line 395
    :cond_1e
    if-nez v9, :cond_1f

    .line 397
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .local v25, rtnBytes_idx:I
    shr-int/lit8 v28, v14, 0x8

    move/from16 v0, v28

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 398
    add-int/lit8 v24, v25, 0x1

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    and-int/lit16 v0, v14, 0xff

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v25

    .line 399
    add-int/lit8 v5, v5, 0x2

    .line 418
    :goto_b
    add-int/lit8 v28, v6, 0x2

    add-int v13, v13, v28

    .line 419
    goto/16 :goto_6

    .line 403
    :cond_1f
    const/16 v28, 0x7e

    move/from16 v0, v28

    if-ge v14, v0, :cond_20

    .line 404
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    and-int/lit8 v28, v14, 0x7f

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 405
    add-int/lit8 v5, v5, 0x1

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto :goto_b

    .line 406
    :cond_20
    const/16 v28, 0x80

    move/from16 v0, v28

    if-lt v14, v0, :cond_21

    const/16 v28, 0x7ff

    move/from16 v0, v28

    if-gt v14, v0, :cond_21

    .line 407
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    and-int/lit16 v0, v14, 0x7c0

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x6

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0xc0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 408
    add-int/lit8 v24, v25, 0x1

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    and-int/lit8 v28, v14, 0x3f

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v25

    .line 409
    add-int/lit8 v5, v5, 0x2

    goto :goto_b

    .line 411
    :cond_21
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    const v28, 0xf000

    and-int v28, v28, v14

    shr-int/lit8 v28, v28, 0xc

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0xe0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 412
    add-int/lit8 v24, v25, 0x1

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    and-int/lit16 v0, v14, 0xfc0

    move/from16 v28, v0

    shr-int/lit8 v28, v28, 0x6

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v25

    .line 413
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    and-int/lit8 v28, v14, 0x3f

    move/from16 v0, v28

    or-int/lit16 v0, v0, 0x80

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-byte v0, v0

    move/from16 v28, v0

    aput-byte v28, v23, v24

    .line 414
    add-int/lit8 v5, v5, 0x3

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto/16 :goto_b

    .line 424
    .end local v6           #chars_found:I
    .end local v14           #intValue:I
    .end local v17           #k:I
    :cond_22
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_23

    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_23

    .line 425
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x6e

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x62

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x73

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x70

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_23

    .line 426
    const/16 v7, 0x20

    .line 427
    add-int/lit8 v13, v13, 0x5

    .line 431
    :cond_23
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_24

    add-int/lit8 v28, v13, 0x5

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_24

    .line 432
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x71

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x75

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x6f

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    add-int/lit8 v28, v13, 0x5

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_24

    .line 433
    const/16 v7, 0x22

    .line 434
    add-int/lit8 v13, v13, 0x5

    .line 438
    :cond_24
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_25

    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_25

    .line 439
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x6c

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_25

    .line 440
    const/16 v7, 0x3c

    .line 441
    add-int/lit8 v13, v13, 0x3

    .line 445
    :cond_25
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_26

    add-int/lit8 v28, v13, 0x3

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_26

    .line 446
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x67

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x74

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_26

    .line 447
    const/16 v7, 0x3e

    .line 448
    add-int/lit8 v13, v13, 0x3

    .line 452
    :cond_26
    const/16 v28, 0x26

    move/from16 v0, v28

    if-ne v7, v0, :cond_27

    add-int/lit8 v28, v13, 0x4

    array-length v0, v12

    move/from16 v29, v0

    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_27

    .line 453
    add-int/lit8 v28, v13, 0x1

    aget-byte v28, v12, v28

    const/16 v29, 0x61

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    add-int/lit8 v28, v13, 0x2

    aget-byte v28, v12, v28

    const/16 v29, 0x6d

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    add-int/lit8 v28, v13, 0x3

    aget-byte v28, v12, v28

    const/16 v29, 0x70

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    add-int/lit8 v28, v13, 0x4

    aget-byte v28, v12, v28

    const/16 v29, 0x3b

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_27

    .line 454
    const/16 v7, 0x26

    .line 455
    add-int/lit8 v13, v13, 0x4

    .line 459
    :cond_27
    const/16 v28, 0xa

    move/from16 v0, v28

    if-ne v7, v0, :cond_29

    .line 460
    if-eqz p1, :cond_28

    .line 461
    const/16 v28, 0xa

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_f

    .line 465
    :cond_28
    add-int/lit8 v18, v18, 0x1

    .line 468
    :cond_29
    const/16 v28, 0x9

    move/from16 v0, v28

    if-eq v7, v0, :cond_2a

    const/16 v28, 0xd

    move/from16 v0, v28

    if-ne v7, v0, :cond_2b

    .line 469
    :cond_2a
    const/16 v7, 0x20

    .line 472
    :cond_2b
    const/16 v28, 0x20

    move/from16 v0, v28

    if-ne v7, v0, :cond_2c

    .line 473
    const/16 v28, 0xa

    move/from16 v0, v21

    move/from16 v1, v28

    if-eq v0, v1, :cond_f

    .line 477
    :cond_2c
    move/from16 v21, v7

    .line 478
    add-int/lit8 v25, v24, 0x1

    .end local v24           #rtnBytes_idx:I
    .restart local v25       #rtnBytes_idx:I
    aput-byte v7, v23, v24

    .line 479
    add-int/lit8 v5, v5, 0x1

    move/from16 v24, v25

    .end local v25           #rtnBytes_idx:I
    .restart local v24       #rtnBytes_idx:I
    goto/16 :goto_6

    .line 483
    .end local v7           #cur_byte:B
    :cond_2d
    if-eqz v9, :cond_2f

    .line 485
    :try_start_1
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 492
    .local v22, rtn:Ljava/lang/String;
    :goto_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 493
    .local v10, end:J
    sget-boolean v28, Lcom/htc/util/mail/MailUtils;->DEBUG:Z

    if-eqz v28, :cond_2e

    const-string v28, "MailUtils"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "converHTMLtoPlainText end...time used: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sub-long v30, v10, v26

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " milliseconds"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_2e
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_0

    .line 486
    .end local v10           #end:J
    .end local v22           #rtn:Ljava/lang/String;
    :catch_1
    move-exception v8

    .line 487
    .restart local v8       #e:Ljava/io/UnsupportedEncodingException;
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 488
    .restart local v22       #rtn:Ljava/lang/String;
    goto :goto_c

    .line 490
    .end local v8           #e:Ljava/io/UnsupportedEncodingException;
    .end local v22           #rtn:Ljava/lang/String;
    :cond_2f
    new-instance v22, Ljava/lang/String;

    const/16 v28, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v28

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .restart local v22       #rtn:Ljava/lang/String;
    goto :goto_c
.end method

.method public static escapeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "displayName"

    .prologue
    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 508
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 509
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 510
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 518
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 512
    :sswitch_0
    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 515
    :sswitch_1
    const-string v3, "\\"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 521
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 510
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x5c -> :sswitch_1
    .end sparse-switch
.end method

.method public static getContactFromEmail(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .parameter "context"
    .parameter "fromEmail"

    .prologue
    const/4 v2, -0x1

    .line 234
    if-nez p1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v2

    .line 237
    :cond_1
    const/4 v1, 0x0

    .line 240
    .local v1, uri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/provider/HtcUnionContact;->getContactByMail(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 241
    if-eqz v1, :cond_0

    .line 244
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getContactNameById(Landroid/content/Context;I)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "contact_id"

    .prologue
    const/4 v9, 0x0

    .line 206
    if-gez p1, :cond_1

    move-object v8, v9

    .line 222
    :cond_0
    :goto_0
    return-object v8

    .line 209
    :cond_1
    const/4 v8, 0x0

    .line 210
    .local v8, name:Ljava/lang/String;
    const-string v0, "content://com.android.contacts/contacts/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 212
    .local v1, peopleUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 213
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 214
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 215
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 216
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 218
    .end local v6           #c:Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .local v7, ex:Ljava/lang/Exception;
    move-object v8, v9

    .line 220
    goto :goto_0
.end method

.method public static getHtcString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 552
    :try_start_0
    invoke-static {p0}, Lcom/htc/res/HtcResources;->getContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 553
    .local v1, htcContext:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 556
    .end local v1           #htcContext:Landroid/content/Context;
    :goto_0
    return-object v2

    .line 554
    :catch_0
    move-exception v0

    .line 555
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MailUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resource not found :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string v2, ""

    goto :goto_0
.end method

.method public static getSpecifiedContactInfo(Landroid/content/Context;J)Lcom/htc/util/mail/MailUtils$ContactInfo;
    .locals 10
    .parameter "context"
    .parameter "contactid"

    .prologue
    .line 169
    const-string v0, "content://com.android.contacts/contacts/widget_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 171
    .local v1, peopleUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 174
    .local v8, info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 176
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 178
    new-instance v9, Lcom/htc/util/mail/MailUtils$ContactInfo;

    invoke-direct {v9}, Lcom/htc/util/mail/MailUtils$ContactInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v8           #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    .local v9, info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    :try_start_1
    iput-wide p1, v9, Lcom/htc/util/mail/MailUtils$ContactInfo;->pid:J

    .line 180
    const-string v0, "photo_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v9, Lcom/htc/util/mail/MailUtils$ContactInfo;->photo_id:J

    .line 181
    const-string v0, "display_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/htc/util/mail/MailUtils$ContactInfo;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 185
    .end local v9           #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    .restart local v8       #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    :cond_0
    if-eqz v6, :cond_1

    .line 186
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-object v8

    .line 189
    :catch_0
    move-exception v7

    .line 191
    .local v7, e:Ljava/lang/Exception;
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 189
    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v9       #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    :catch_1
    move-exception v7

    move-object v8, v9

    .end local v9           #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    .restart local v8       #info:Lcom/htc/util/mail/MailUtils$ContactInfo;
    goto :goto_1
.end method

.method public static getWellFormedEmailAddress(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "displayName"
    .parameter "address"

    .prologue
    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/htc/util/mail/MailUtils;->escapeDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "s"

    .prologue
    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .local v3, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 570
    .local v2, lastIsSpace:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 571
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 572
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 603
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    const/4 v2, 0x0

    .line 570
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 574
    :sswitch_0
    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    const/4 v2, 0x0

    .line 576
    goto :goto_1

    .line 578
    :sswitch_1
    const-string v4, "&gt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    const/4 v2, 0x0

    .line 580
    goto :goto_1

    .line 582
    :sswitch_2
    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    const/4 v2, 0x0

    .line 584
    goto :goto_1

    .line 586
    :sswitch_3
    const-string v4, "&#39;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    const/4 v2, 0x0

    .line 588
    goto :goto_1

    .line 590
    :sswitch_4
    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    const/4 v2, 0x0

    .line 592
    goto :goto_1

    .line 594
    :sswitch_5
    if-eqz v2, :cond_0

    .line 595
    const/4 v2, 0x0

    .line 596
    const-string v4, "&nbsp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 598
    :cond_0
    const/4 v2, 0x1

    .line 599
    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 607
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 572
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_5
        0x22 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static linkifyUrl(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 9
    .parameter "bodyText"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/mail/util/ParsingDroid$IndexPair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, urlIndexPair:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/mail/util/ParsingDroid$IndexPair;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 620
    :cond_0
    const-string v6, "MailUtils"

    const-string v7, "linkifyUrl> bodyText or urlIndexPair is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    .end local p0
    :goto_0
    return-object p0

    .line 624
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 626
    .local v0, bodyTextBuilder:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_3

    .line 627
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/util/mail/util/ParsingDroid$IndexPair;

    invoke-virtual {v6}, Lcom/htc/util/mail/util/ParsingDroid$IndexPair;->getFirstIndex()I

    move-result v4

    .line 628
    .local v4, startIndex:I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/util/mail/util/ParsingDroid$IndexPair;

    invoke-virtual {v6}, Lcom/htc/util/mail/util/ParsingDroid$IndexPair;->getSecondIndex()I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 630
    .local v1, endIndex:I
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 632
    .local v5, url:Ljava/lang/String;
    const-string v6, "MailUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "linkifyUrl> Url: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/4 v3, 0x0

    .line 635
    .local v3, linkedUrl:Ljava/lang/String;
    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "www."

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 636
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<a href=\"http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 641
    :goto_2
    const-string v6, "</a>"

    invoke-virtual {v0, v1, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 638
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<a href=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\">"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 644
    .end local v1           #endIndex:I
    .end local v3           #linkedUrl:Ljava/lang/String;
    .end local v4           #startIndex:I
    .end local v5           #url:Ljava/lang/String;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
