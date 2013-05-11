.class public final Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;
.super Landroid/os/Handler;
.source "HtcIccPbkEntryCache_QMI.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;
.implements Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;


# static fields
.field private static final ADN_ALPHA_TAG_LENGTH:I = 0x0

.field private static final ADN_NUMBER_LENGTH:I = 0x1

.field private static final ADN_RECORDS_CAPACITY:I = 0x2

.field private static final ANR_ENTRIES_PER_PBK:I = 0x3

.field static final ANR_ENTRY_INDEX_1:I = 0x0

.field static final ANR_ENTRY_INDEX_2:I = 0x1

#the value of this static final field might be set in the static constructor
.field static final DBG:Z = false

.field private static final EMAIL_ENTRIES_PER_PBK:I = 0x4

.field static final ERROR_ANR1_FULL:I = 0x2

.field static final ERROR_ANR2_FULL:I = 0x4

.field static final ERROR_EMAIL_FULL:I = 0x1

.field static final ERROR_NONE:I = 0x0

.field static final ERROR_UNKNOWN:I = 0x8

.field private static final EVENT_ADD_PB_ENTRY_DONE:I = 0x4

.field private static final EVENT_DELETE_PB_ENTRY_DONE:I = 0x6

.field private static final EVENT_GET_PB_LENGTH_DONE:I = 0x1

.field private static final EVENT_GET_PB_USED_NUM_DONE:I = 0x2

.field private static final EVENT_LOAD_PB_ADN_DONE:I = 0x9

.field private static final EVENT_LOAD_PB_ANR_DONE:I = 0xd

.field private static final EVENT_LOAD_PB_CC_DONE:I = 0x16

.field private static final EVENT_LOAD_PB_EMAIL_DONE:I = 0xc

.field private static final EVENT_LOAD_PB_ENTRIES_DONE:I = 0x3

.field private static final EVENT_LOAD_PB_EXT1_DONE:I = 0x8

.field private static final EVENT_LOAD_PB_IAP_DONE:I = 0xb

.field private static final EVENT_LOAD_PB_PBR_DONE:I = 0x7

.field private static final EVENT_LOAD_PB_PSC_DONE:I = 0x14

.field private static final EVENT_LOAD_PB_PUID_DONE:I = 0x18

.field private static final EVENT_LOAD_PB_UID_DONE:I = 0xa

.field private static final EVENT_UPDATE_ANR_DONE:I = 0x12

.field private static final EVENT_UPDATE_ANR_EXT1_DONE:I = 0x13

.field private static final EVENT_UPDATE_EMAIL_DONE:I = 0x11

.field private static final EVENT_UPDATE_EXT1_DONE:I = 0xf

.field private static final EVENT_UPDATE_IAP_DONE:I = 0x10

.field private static final EVENT_UPDATE_PB_CC_DONE:I = 0x17

.field private static final EVENT_UPDATE_PB_ENTRY_DONE:I = 0x5

.field private static final EVENT_UPDATE_PB_PSC_DONE:I = 0x15

.field private static final EVENT_UPDATE_PB_PUID_DONE:I = 0x19

.field private static final EVENT_UPDATE_PB_UID_DONE:I = 0xe

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final IAP_ENTRY_ANR_1_INDEX:I = 0x0

.field static final IAP_ENTRY_ANR_2_INDEX:I = 0x1

.field static final IAP_ENTRY_EMAIL_INDEX:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "HtcIccPbkEntryCache_QMI"

.field static final MAX_INT_VALUE:J = 0xffffffffL

.field static final MAX_NUM_ANR_PER_PBK_ENTRY:I = 0x2

.field static final MAX_SHORT_VALUE:I = 0xffff

.field private static final QUERY_SIM_CONTACT_FILE_TIMESTAMP:Ljava/lang/String; = "query_sim_contact_file_timestamp"

.field static final SDBG:Z


# instance fields
.field m2GPhonebook:Z

.field mADNRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcAdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mANR_swap:Z

.field mAnrFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mAnrRecordLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AnrRecord;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mChangeCounter:I

.field mDropSIMTimeStamp:J

.field mEmailFileList:Ljava/util/HashMap;
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

.field mEmailRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/EmailRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mExt1RecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;"
        }
    .end annotation
.end field

.field mIAPRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IAPRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mIap_Updatedata:[B

.field mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

.field mMsgNumber:I

.field mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

.field mPSC:J

.field mPUID:I

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mRecordNums:I

.field mSimPbkEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation
.end field

.field mSimPbkWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mSupportAnr:[Z

.field mSupportCC:Z

.field mSupportEmail:Z

.field mSupportPSC:Z

.field mSupportPUID:Z

.field private mTotal:I

.field mUIDRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/UIDRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUsed:I

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field misloading:Z

.field pollingContext:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->DBG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 4
    .parameter "phone"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 216
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    .line 171
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    .line 181
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 183
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    .line 185
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 191
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 192
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    .line 194
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    .line 196
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 197
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 201
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 202
    iput-wide v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 203
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 205
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 206
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 207
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 210
    iput-wide v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    .line 217
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 218
    new-instance v0, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    .line 219
    return-void
.end method

.method private addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 8
    .parameter "anrNumber"
    .parameter "entry"
    .parameter "anrEntryIndex"

    .prologue
    const/4 v4, 0x1

    .line 2329
    const-string v0, "addAnrRecord()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2330
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v0, :cond_1

    .line 2331
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2332
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2334
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v7, v0, v1

    .line 2335
    .local v7, num:I
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v7, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2336
    .local v3, efid:I
    if-eqz v3, :cond_1

    .line 2338
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v1, v7

    sub-int v6, v0, v1

    .line 2340
    .local v6, adnRecordNumber:I
    const/4 v2, 0x0

    .line 2341
    .local v2, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2342
    invoke-virtual {p0, v7, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v2

    .line 2344
    if-eqz v2, :cond_0

    .line 2345
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    .line 2369
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 2370
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2371
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2372
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2373
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2375
    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    const/16 v0, 0x12

    invoke-virtual {p0, v0, v7, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2386
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v3           #efid:I
    .end local v6           #adnRecordNumber:I
    .end local v7           #num:I
    :cond_1
    :goto_1
    return-void

    .line 2349
    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .restart local v3       #efid:I
    .restart local v6       #adnRecordNumber:I
    .restart local v7       #num:I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 2350
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 2352
    if-lez v6, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v6, v0, :cond_3

    .line 2355
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    goto :goto_0

    .line 2358
    :cond_3
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2362
    :cond_4
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrindex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2365
    :cond_5
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2380
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "Can not find empty ANR record"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I
    .locals 7
    .parameter "number1"
    .parameter "number2"
    .parameter "email"
    .parameter "num"
    .parameter "entry"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 2017
    const/4 v2, 0x0

    .line 2018
    .local v2, error:I
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 2020
    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v5, v5, v6

    if-nez v5, :cond_0

    .line 2083
    :goto_0
    return v3

    .line 2024
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v5, :cond_1

    move v3, v4

    .line 2025
    goto :goto_0

    .line 2028
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 2029
    goto :goto_0

    .line 2033
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2034
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_3

    .line 2035
    iget v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-nez v4, :cond_3

    .line 2036
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v1

    .line 2037
    .local v1, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    if-nez v1, :cond_3

    .line 2038
    add-int/lit8 v2, v2, 0x1

    .line 2045
    .end local v1           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2046
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v3

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 2047
    iget-object v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, v3

    if-nez v4, :cond_4

    .line 2048
    invoke-virtual {p0, p4, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2049
    .local v0, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_4

    .line 2050
    add-int/lit8 v2, v2, 0x2

    .line 2056
    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2057
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_5

    .line 2058
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_5

    .line 2059
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2060
    .restart local v0       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_5

    .line 2061
    add-int/lit8 v2, v2, 0x4

    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_5
    :goto_1
    move v3, v2

    .line 2083
    goto :goto_0

    .line 2066
    :cond_6
    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 2067
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_8

    .line 2068
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_9

    .line 2069
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 2070
    .restart local v0       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-eqz v0, :cond_8

    .line 2071
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    .line 2078
    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_8
    :goto_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    if-ne v3, v6, :cond_5

    .line 2079
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 2074
    :cond_9
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    goto :goto_2
.end method

.method private checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "number"
    .parameter "number1"
    .parameter "number2"

    .prologue
    const/16 v6, 0x2b

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v1, 0x8

    const/4 v3, 0x1

    .line 1983
    const/4 v0, 0x0

    .line 1985
    .local v0, error:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1986
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 2013
    .end local v0           #error:I
    :cond_0
    :goto_0
    return v0

    .line 1991
    .restart local v0       #error:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v3

    if-ne v2, v3, :cond_4

    .line 1992
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v2, :cond_3

    move v0, v1

    .line 1993
    goto :goto_0

    .line 1996
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1997
    goto :goto_0

    .line 2001
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2002
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_5

    move v0, v1

    .line 2003
    goto :goto_0

    .line 2007
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2008
    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 2009
    goto :goto_0
.end method

.method private getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 3101
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-eqz v0, :cond_0

    .line 3102
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 3104
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    goto :goto_0
.end method

.method private getPbkEntryListIfLoaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private handleExt1loaded(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 1370
    const-string v4, "handleExt1loaded"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1373
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1374
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object v1, v4

    check-cast v1, Ljava/util/ArrayList;

    .line 1376
    .local v1, ext1Data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1377
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1378
    .local v2, ext1DataSize:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 1379
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1380
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-static {v6, v4}, Lcom/android/internal/telephony/HtcExt1Record;->parseFromEf(I[B)Lcom/android/internal/telephony/HtcExt1Record;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1379
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1385
    .end local v2           #ext1DataSize:I
    .end local v3           #i:I
    :cond_0
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "Failed to load EF_EXT1"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_1
    return-void
.end method

.method private handlePollPBResult(ILandroid/os/AsyncResult;)V
    .locals 5
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 1391
    iget-object v3, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    if-eq v3, v4, :cond_1

    .line 1423
    :cond_0
    :goto_0
    return-void

    .line 1393
    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1396
    const-string v3, "handlePollPBResult()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1398
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1399
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1401
    :pswitch_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1403
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 1404
    .local v2, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v2, :cond_0

    .line 1406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() temp.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1409
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1410
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1412
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() entry.index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1414
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1415
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1409
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1399
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private notifySimPbkWaiter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1358
    const-string v2, "notifySimPbkWaiter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1360
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-direct {v0, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1361
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 1362
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1363
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1364
    .local v1, intent:Landroid/content/Intent;
    invoke-static {v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1367
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 7
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    const/4 v6, 0x0

    .line 2594
    if-nez p1, :cond_0

    .line 2609
    :goto_0
    return-void

    .line 2598
    :cond_0
    const-string v3, "HtcIccPbkEntryCache_QMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyWaiters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 2600
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 2601
    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2603
    invoke-virtual {v2}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2604
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2599
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2608
    .end local v2           #waiter:Landroid/os/Message;
    :cond_2
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    goto :goto_0
.end method

.method private pollPBList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1502
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    .line 1503
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    aput v5, v3, v5

    .line 1505
    const/4 v2, 0x0

    .local v2, start:I
    const/4 v0, 0x0

    .line 1507
    .local v0, end:I
    const-string v3, "pollPBList()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1509
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    if-ge v0, v3, :cond_2

    .line 1510
    add-int/lit8 v2, v0, 0x1

    .line 1511
    add-int/lit8 v0, v2, 0xa

    .line 1513
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    if-le v0, v3, :cond_0

    .line 1514
    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 1516
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    aget v4, v3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v5

    .line 1517
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1520
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_1

    .line 1521
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntries(IILandroid/os/Message;)V

    .line 1526
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1523
    :cond_1
    const-string v3, "mPhone is null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1528
    .end local v1           #response:Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private sLog(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 2706
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 2612
    if-nez p1, :cond_1

    .line 2623
    :cond_0
    :goto_0
    return-void

    .line 2616
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2617
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2619
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2620
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 2626
    if-nez p1, :cond_1

    .line 2636
    :cond_0
    :goto_0
    return-void

    .line 2630
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2632
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2633
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private setLocalMemberToDefault()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3185
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 3186
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 3187
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUsed:I

    .line 3188
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 3189
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 3190
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aput-boolean v2, v0, v2

    .line 3191
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aput-boolean v2, v0, v1

    .line 3192
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    .line 3193
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 3194
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 3195
    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 3196
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 3197
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 3198
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 3199
    return-void
.end method

.method private setSIMSystemProperties(II)V
    .locals 5
    .parameter "tag"
    .parameter "value"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3109
    const/4 v0, 0x0

    .line 3110
    .local v0, propertyName:Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3111
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3178
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 3179
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3181
    :cond_2
    return-void

    .line 3113
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 3114
    const-string v0, "gsm.sim.alpha-tag.length"

    goto :goto_0

    .line 3115
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 3116
    const-string v0, "gsm.sub.icc.alpha-tag.length"

    goto :goto_0

    .line 3117
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3118
    const-string v0, "cdma.sim.alpha-tag.length"

    goto :goto_0

    .line 3122
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 3123
    const-string v0, "gsm.sim.number.length"

    goto :goto_0

    .line 3124
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 3125
    const-string v0, "gsm.sub.icc.number.length"

    goto :goto_0

    .line 3126
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3127
    const-string v0, "cdma.sim.number.length"

    goto :goto_0

    .line 3131
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 3132
    const-string v0, "gsm.sim.adn.records.capacity"

    goto :goto_0

    .line 3133
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 3134
    const-string v0, "gsm.sub.adn.records.capacity"

    goto :goto_0

    .line 3135
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3136
    const-string v0, "cdma.sim.adn.records.capacity"

    goto :goto_0

    .line 3140
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 3141
    const-string v0, "gsm.sim.anr.max-no"

    goto :goto_0

    .line 3142
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 3143
    const-string v0, "gsm.sub.icc.anr.max-no"

    goto/16 :goto_0

    .line 3144
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3145
    const-string v0, "cdma.sim.anr.max-no"

    goto/16 :goto_0

    .line 3149
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_b

    .line 3150
    const-string v0, "gsm.sim.email.max-no"

    goto/16 :goto_0

    .line 3151
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_c

    .line 3152
    const-string v0, "gsm.sub.icc.email.max-no"

    goto/16 :goto_0

    .line 3153
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3154
    const-string v0, "cdma.sim.email.max-no"

    goto/16 :goto_0

    .line 3159
    :cond_d
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 3161
    :pswitch_5
    const-string v0, "gsm.usim.alpha-tag.length"

    .line 3162
    goto/16 :goto_0

    .line 3164
    :pswitch_6
    const-string v0, "gsm.usim.number.length"

    .line 3165
    goto/16 :goto_0

    .line 3167
    :pswitch_7
    const-string v0, "gsm.adn.records.capacity"

    .line 3168
    goto/16 :goto_0

    .line 3170
    :pswitch_8
    const-string v0, "gsm.usim.anr.max-no"

    .line 3171
    goto/16 :goto_0

    .line 3173
    :pswitch_9
    const-string v0, "gsm.usim.email.max-no"

    goto/16 :goto_0

    .line 3111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 3159
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private setSIMSystemPropertiesToDefault()V
    .locals 2

    .prologue
    .line 3203
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3204
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3205
    const-string v0, "gsm.sim.alpha-tag.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    const-string v0, "gsm.sim.number.length"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3207
    const-string v0, "gsm.sim.adn.records.capacity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3208
    const-string v0, "gsm.sim.anr.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3209
    const-string v0, "gsm.sim.email.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    const-string v0, "gsm.sim.email.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    :cond_1
    :goto_0
    return-void

    .line 3211
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 3212
    const-string v0, "gsm.sub.icc.alpha-tag.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3213
    const-string v0, "gsm.sub.icc.number.length"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3214
    const-string v0, "gsm.sub.adn.records.capacity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3215
    const-string v0, "gsm.sub.icc.anr.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3216
    const-string v0, "gsm.sub.icc.email.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3217
    const-string v0, "gsm.sub.icc.email.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3218
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 3219
    const-string v0, "cdma.sim.alpha-tag.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    const-string v0, "cdma.sim.number.length"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    const-string v0, "cdma.sim.adn.records.capacity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3222
    const-string v0, "cdma.sim.anr.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3223
    const-string v0, "cdma.sim.email.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3224
    const-string v0, "cdma.sim.email.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3227
    :cond_4
    const-string v0, "gsm.usim.alpha-tag.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3228
    const-string v0, "gsm.usim.number.length"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3229
    const-string v0, "gsm.adn.records.capacity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3230
    const-string v0, "gsm.usim.anr.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3231
    const-string v0, "gsm.usim.email.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3232
    const-string v0, "gsm.usim.email.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 1967
    if-nez p0, :cond_0

    .line 1968
    const/4 v4, 0x0

    .line 1979
    :goto_0
    return-object v4

    .line 1970
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1971
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1973
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1974
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1975
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator_FDN(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1976
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1973
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1979
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V
    .locals 7
    .parameter "name"
    .parameter "number"
    .parameter "entry"
    .parameter "response"

    .prologue
    .line 2490
    const/4 v2, 0x0

    .line 2491
    .local v2, efid:I
    iget v5, p3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v3, v5, v6

    .line 2492
    .local v3, num:I
    iget v5, p3, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v6, v3

    sub-int v1, v5, v6

    .line 2494
    .local v1, adnRecordNumber:I
    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    if-nez v5, :cond_1

    .line 2495
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v5, :cond_0

    .line 2496
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2497
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v6, 0xc0

    invoke-virtual {v5, v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2504
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    .line 2505
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 2506
    if-lez v1, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gt v1, v5, :cond_2

    .line 2507
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    add-int/lit8 v6, v1, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/HtcAdnRecord;

    .line 2508
    .local v0, adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    iput-object p1, v0, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    .line 2509
    iput-object p2, v0, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    .line 2512
    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    rem-int/lit16 v5, v5, 0xff

    iput v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    .line 2513
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    invoke-virtual {v5, v6, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2515
    const/4 v5, 0x5

    iget v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    invoke-virtual {p0, v5, v6, v3, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2517
    .local v4, res:Landroid/os/Message;
    iget v5, v0, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    invoke-virtual {p0, v5, v0, v2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNByIndex(ILcom/android/internal/telephony/HtcAdnRecord;ILandroid/os/Message;)V

    .line 2530
    .end local v0           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v4           #res:Landroid/os/Message;
    :goto_1
    return-void

    .line 2501
    :cond_1
    const/16 v2, 0x6f3a

    goto :goto_0

    .line 2519
    :cond_2
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "adnRecordNumber out of mADNRecordList.get(num).size()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 2523
    :cond_3
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "num out of mADNRecordList.size()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1

    .line 2527
    :cond_4
    const-string v5, "HtcIccPbkEntryCache_QMI"

    const-string v6, "The efid of ADN is 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    const-string v5, "error"

    invoke-direct {p0, p4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 11
    .parameter "anrNumber"
    .parameter "entry"
    .parameter "anrEntryIndex"

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x12

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAnrRecord()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2392
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v0, :cond_0

    .line 2393
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2394
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v8, v0, v1

    .line 2395
    .local v8, num:I
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v8, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2396
    .local v3, efid:I
    if-eqz v3, :cond_0

    .line 2398
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v1, v8

    sub-int v6, v0, v1

    .line 2400
    .local v6, adnRecordNumber:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v9, :cond_4

    .line 2402
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 2403
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 2404
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_0

    .line 2406
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_1

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 2409
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2412
    .local v2, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 2413
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2417
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aput v10, v0, p3

    .line 2418
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p3

    .line 2420
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2421
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v7

    .line 2422
    .local v7, index:I
    if-ltz v7, :cond_0

    .line 2423
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v7

    .line 2487
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v3           #efid:I
    .end local v6           #adnRecordNumber:I
    .end local v7           #index:I
    .end local v8           #num:I
    :cond_0
    :goto_0
    return-void

    .line 2427
    .restart local v3       #efid:I
    .restart local v6       #adnRecordNumber:I
    .restart local v8       #num:I
    :cond_1
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2432
    :cond_2
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2435
    :cond_3
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2441
    :cond_4
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_9

    .line 2444
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_5

    .line 2445
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v7

    .line 2446
    .restart local v7       #index:I
    if-ltz v7, :cond_5

    .line 2447
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 2451
    .end local v7           #index:I
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_8

    .line 2452
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_7

    .line 2453
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_6

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_6

    .line 2456
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2459
    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    iput v10, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2460
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2461
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2462
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2464
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2469
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_6
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2473
    :cond_7
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2476
    :cond_8
    const-string v0, "HtcIccPbkEntryCache_QMI"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2481
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    goto/16 :goto_0
.end method

.method private updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V
    .locals 11
    .parameter "email"
    .parameter "entry"

    .prologue
    const/16 v10, 0xc0

    const/16 v9, 0x11

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2088
    const-string v4, "updateEmailRecord()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2089
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v4, :cond_0

    .line 2091
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2092
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v3, v4, v5

    .line 2093
    .local v3, num:I
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v5, 0xca

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v1

    .line 2095
    .local v1, efid:I
    if-eqz v1, :cond_0

    .line 2096
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v5, v3

    sub-int v0, v4, v5

    .line 2098
    .local v0, adnRecordNumber:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2100
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 2101
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_0

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_0

    .line 2103
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_1

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_1

    .line 2106
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 2109
    .local v2, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 2110
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    .line 2117
    iput v7, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 2118
    const-string v4, ""

    iput-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 2120
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 2122
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v5, -0x1

    aput-byte v5, v4, v8

    .line 2216
    .end local v0           #adnRecordNumber:I
    .end local v1           #efid:I
    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    .end local v3           #num:I
    :cond_0
    :goto_0
    return-void

    .line 2125
    .restart local v0       #adnRecordNumber:I
    .restart local v1       #efid:I
    .restart local v3       #num:I
    :cond_1
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2131
    :cond_2
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2134
    :cond_3
    const/4 v2, 0x0

    .line 2137
    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_7

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_7

    .line 2139
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 2140
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 2142
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 2143
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_5

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_5

    .line 2146
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 2148
    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 2149
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 2150
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 2155
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2163
    :cond_5
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2168
    :cond_6
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2173
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_9

    .line 2174
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v2

    .line 2175
    if-eqz v2, :cond_8

    .line 2176
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    iget v5, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 2194
    :cond_8
    :goto_1
    if-eqz v2, :cond_c

    .line 2195
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 2196
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 2197
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 2201
    iget v4, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2179
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 2180
    if-lez v0, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v0, v4, :cond_a

    .line 2183
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    goto :goto_1

    .line 2187
    :cond_a
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2190
    :cond_b
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2209
    :cond_c
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "Can not find empty email record"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateIAP(IZ)V
    .locals 15
    .parameter "index"
    .parameter "clear"

    .prologue
    .line 2219
    const-string v11, "updateIAP()"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2220
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2224
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-lez v11, :cond_3

    .line 2225
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 2226
    add-int/lit8 v11, p1, -0x1

    iget v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v7, v11, v12

    .line 2228
    .local v7, num:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xc1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2231
    .local v3, efid_iap:I
    if-eqz v3, :cond_9

    .line 2232
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_8

    .line 2233
    iget v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    mul-int/2addr v11, v7

    sub-int v9, p1, v11

    .line 2235
    .local v9, recordNumber:I
    if-lez v9, :cond_7

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v9, v11, :cond_7

    .line 2238
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IAPRecord;

    .line 2241
    .local v5, iapRecord:Lcom/android/internal/telephony/IAPRecord;
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    new-array v10, v11, [B

    .line 2243
    .local v10, recordString:[B
    const/4 v1, 0x0

    .line 2244
    .local v1, doUpdate:Z
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_4

    .line 2245
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    if-ge v4, v11, :cond_1

    .line 2246
    const/4 v11, -0x1

    aput-byte v11, v10, v4

    .line 2245
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2248
    :cond_1
    const/4 v1, 0x1

    .line 2299
    .end local v4           #i:I
    :cond_2
    :goto_1
    const/4 v11, 0x1

    if-ne v1, v11, :cond_3

    .line 2300
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "num ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doUpdate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " iapRecord.mRecordNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2303
    const/4 v11, 0x0

    iget-object v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2307
    const/16 v11, 0x10

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v7, v12, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {p0, v9, v5, v3, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V

    .line 2324
    .end local v1           #doUpdate:Z
    .end local v3           #efid_iap:I
    .end local v5           #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .end local v7           #num:I
    .end local v9           #recordNumber:I
    .end local v10           #recordString:[B
    :cond_3
    :goto_2
    return-void

    .line 2250
    .restart local v1       #doUpdate:Z
    .restart local v3       #efid_iap:I
    .restart local v5       #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .restart local v7       #num:I
    .restart local v9       #recordNumber:I
    .restart local v10       #recordString:[B
    :cond_4
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v11, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2253
    iget-boolean v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 2255
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xca

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2257
    .local v2, efid:I
    if-eqz v2, :cond_5

    .line 2258
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2260
    .local v8, position:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    if-eqz v11, :cond_5

    if-lez v8, :cond_5

    .line 2261
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 2262
    const/4 v1, 0x1

    .line 2267
    .end local v2           #efid:I
    .end local v8           #position:I
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 2270
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2272
    .restart local v2       #efid:I
    if-eqz v2, :cond_6

    .line 2273
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2275
    .restart local v8       #position:I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v6

    .line 2276
    .local v6, index_iap:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_6

    if-lez v8, :cond_6

    .line 2277
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2278
    const/4 v1, 0x1

    .line 2283
    .end local v2           #efid:I
    .end local v6           #index_iap:I
    .end local v8           #position:I
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v12, 0x1

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 2286
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2288
    .restart local v2       #efid:I
    if-eqz v2, :cond_2

    .line 2289
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2291
    .restart local v8       #position:I
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIAPIndex(I)I

    move-result v6

    .line 2292
    .restart local v6       #index_iap:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_2

    if-lez v8, :cond_2

    .line 2293
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2294
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2312
    .end local v1           #doUpdate:Z
    .end local v2           #efid:I
    .end local v5           #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .end local v6           #index_iap:I
    .end local v8           #position:I
    .end local v10           #recordString:[B
    :cond_7
    const-string v11, "HtcIccPbkEntryCache_QMI"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "out of mIAPRecordList.get(num).size()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2315
    .end local v9           #recordNumber:I
    :cond_8
    const-string v11, "HtcIccPbkEntryCache_QMI"

    const-string v12, "num out of mIAPRecordList.size()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2318
    :cond_9
    const-string v11, "HtcIccPbkEntryCache_QMI"

    const-string v12, "no EF-IAP"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private updatePSCRecord(ZII)V
    .locals 12
    .parameter "addpbk"
    .parameter "num"
    .parameter "index"

    .prologue
    .line 1859
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    .line 1861
    .local v3, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    const/4 v7, 0x0

    .line 1862
    .local v7, updatePSC:Z
    const/4 v5, 0x0

    .line 1863
    .local v5, resetAllUID:Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 1864
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 1866
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    const v9, 0xffff

    if-le v8, v9, :cond_0

    .line 1867
    const/4 v7, 0x1

    .line 1868
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 1871
    :cond_0
    const/4 v8, 0x2

    new-array v0, v8, [B

    .line 1872
    .local v0, data:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v8, 0x2

    if-ge v2, v8, :cond_1

    .line 1873
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 1874
    .local v4, offset:I
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    ushr-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 1872
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1876
    .end local v4           #offset:I
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update Change Counter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1878
    if-eqz v3, :cond_2

    .line 1879
    const/16 v8, 0x4f23

    const/16 v9, 0x17

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1883
    .end local v0           #data:[B
    .end local v2           #i:I
    :cond_2
    const/4 v8, 0x1

    if-ne p1, v8, :cond_7

    iget-boolean v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_7

    .line 1884
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 1886
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    const v9, 0xffff

    if-le v8, v9, :cond_3

    .line 1888
    const/4 v7, 0x1

    .line 1889
    const/4 v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 1892
    :cond_3
    const/4 v8, 0x2

    new-array v0, v8, [B

    .line 1893
    .restart local v0       #data:[B
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    const/4 v8, 0x2

    if-ge v2, v8, :cond_4

    .line 1894
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 1895
    .restart local v4       #offset:I
    iget v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    ushr-int/2addr v8, v4

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 1893
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1897
    .end local v4           #offset:I
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update mPUID: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1899
    if-eqz v3, :cond_5

    .line 1900
    const/16 v8, 0x4f24

    const/16 v9, 0x19

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1904
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v8

    if-ge p2, v8, :cond_c

    .line 1905
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v9, 0xc9

    invoke-virtual {v8, p2, v9}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v1

    .line 1906
    .local v1, efid:I
    if-eqz v1, :cond_b

    .line 1907
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge p2, v8, :cond_a

    .line 1908
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge p3, v8, :cond_9

    .line 1909
    iget-object v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    add-int/lit8 v9, p3, -0x1

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/UIDRecord;

    .line 1910
    .local v6, uidRecord:Lcom/android/internal/telephony/UIDRecord;
    array-length v8, v0

    iget-object v9, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v9, v9

    if-ne v8, v9, :cond_7

    .line 1911
    const/4 v2, 0x0

    :goto_2
    iget-object v8, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    array-length v8, v8

    if-ge v2, v8, :cond_6

    .line 1912
    iget-object v8, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordData:[B

    aget-byte v9, v0, v2

    aput-byte v9, v8, v2

    .line 1911
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1914
    :cond_6
    new-instance v8, Lcom/android/internal/telephony/UIDRecordLoader;

    iget-object v9, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v10, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v8, v9, v10}, Lcom/android/internal/telephony/UIDRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    iget v9, v6, Lcom/android/internal/telephony/UIDRecord;->mRecordNumber:I

    const/16 v10, 0xe

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v8, v1, v9, v6, v10}, Lcom/android/internal/telephony/UIDRecordLoader;->updateEF(IILcom/android/internal/telephony/UIDRecord;Landroid/os/Message;)V

    .line 1946
    .end local v0           #data:[B
    .end local v1           #efid:I
    .end local v2           #i:I
    .end local v6           #uidRecord:Lcom/android/internal/telephony/UIDRecord;
    :cond_7
    :goto_3
    iget-boolean v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    const/4 v9, 0x1

    if-ne v8, v9, :cond_e

    const/4 v8, 0x1

    if-ne v7, v8, :cond_e

    .line 1947
    iget-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    iput-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 1948
    iget-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    const-wide v10, 0xffffffffL

    cmp-long v8, v8, v10

    if-lez v8, :cond_8

    .line 1949
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 1951
    :cond_8
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 1952
    .restart local v0       #data:[B
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    const/4 v8, 0x4

    if-ge v2, v8, :cond_d

    .line 1953
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v8, v2

    mul-int/lit8 v4, v8, 0x8

    .line 1954
    .restart local v4       #offset:I
    iget-wide v8, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    ushr-long/2addr v8, v4

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 1952
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1918
    .end local v4           #offset:I
    .restart local v1       #efid:I
    :cond_9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "out of EFUID index = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_3

    .line 1921
    :cond_a
    const-string v8, "num out of mUIDRecordList().size()"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_3

    .line 1924
    :cond_b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Can not find EFUID id num:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_3

    .line 1927
    .end local v1           #efid:I
    :cond_c
    const-string v8, "num out of mPBRParser size()"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_3

    .line 1957
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update PSC: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1959
    if-eqz v3, :cond_e

    .line 1960
    const/16 v8, 0x4f22

    const/16 v9, 0x15

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v3, v8, v0, v9}, Lcom/android/internal/telephony/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    .line 1963
    .end local v0           #data:[B
    .end local v2           #i:I
    :cond_e
    return-void
.end method


# virtual methods
.method public addPBKEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)J
    .locals 18
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "emailAddress"
    .parameter "response"

    .prologue
    .line 1544
    const-string v4, "addPBKEntry()"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1545
    const-wide/16 v13, 0x0

    .line 1546
    .local v13, index:J
    const/4 v10, 0x0

    .line 1549
    .local v10, error:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v4, :cond_0

    .line 1550
    const-string v4, "mPhone null"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v15, v13

    .line 1655
    .end local v13           #index:J
    .local v15, index:J
    :goto_0
    return-wide v15

    .line 1556
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_0
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    array-length v4, v4

    if-ge v11, v4, :cond_1

    .line 1557
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v11

    .line 1556
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1560
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1564
    .local v17, phonenumber:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1566
    if-eqz v10, :cond_2

    .line 1567
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide v15, v13

    .line 1568
    .end local v13           #index:J
    .restart local v15       #index:J
    goto :goto_0

    .line 1572
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v12

    .line 1574
    .local v12, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_3

    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v4, :cond_3

    .line 1576
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :goto_2
    move-wide v15, v13

    .line 1655
    .end local v13           #index:J
    .restart local v15       #index:J
    goto :goto_0

    .line 1580
    .end local v15           #index:J
    .restart local v13       #index:J
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getFirstEmptyPbkRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/PhoneBookEntry;

    move-result-object v9

    .line 1582
    .local v9, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-nez v9, :cond_4

    .line 1583
    const-string v4, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1585
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v4, :cond_5

    .line 1586
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1588
    :cond_5
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v8, v4, v5

    .line 1590
    .local v8, num:I
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 1591
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v10

    .line 1593
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 1594
    move-object/from16 p4, p3

    .line 1595
    const-string p3, ""

    .line 1598
    :cond_6
    if-eqz v10, :cond_7

    .line 1599
    packed-switch v10, :pswitch_data_0

    .line 1610
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1607
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MemoryFull:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1616
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 1617
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1623
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 1624
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1627
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 1628
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v9, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1634
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1635
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_c

    .line 1638
    :cond_b
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1645
    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v2, v9, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1647
    const/4 v4, 0x1

    iget v5, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    .line 1649
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    int-to-long v13, v4

    goto/16 :goto_2

    .line 1599
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method checkSupportANR(I)Z
    .locals 1
    .parameter "anrEntryIndex"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method checkSupportEmail()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    return v0
.end method

.method convertEventToTag(II)I
    .locals 1
    .parameter "event"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 2988
    packed-switch p1, :pswitch_data_0

    .line 3008
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2991
    :pswitch_0
    const/16 v0, 0xc9

    goto :goto_0

    .line 2994
    :pswitch_1
    const/16 v0, 0xc0

    goto :goto_0

    .line 2996
    :pswitch_2
    const/16 v0, 0xc1

    goto :goto_0

    .line 2998
    :pswitch_3
    const/16 v0, 0xca

    goto :goto_0

    .line 3000
    :pswitch_4
    const/16 v0, 0xc2

    goto :goto_0

    .line 3002
    :pswitch_5
    if-nez p2, :cond_1

    .line 3003
    const/4 v0, 0x0

    goto :goto_0

    .line 3004
    :cond_1
    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2988
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public deletePBKEntry(ILandroid/os/Message;)V
    .locals 9
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1667
    const-string v4, "deletePBKEntry()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1669
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v4, :cond_0

    .line 1670
    const-string v4, "mPhone null"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1674
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 1676
    .local v1, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v4, :cond_1

    .line 1678
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1733
    :goto_0
    return-void

    .line 1682
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v4, :cond_9

    .line 1683
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1685
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v0, :cond_2

    iget v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v4, :cond_3

    .line 1686
    :cond_2
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1691
    :cond_3
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-ne v4, v6, :cond_4

    .line 1692
    invoke-direct {p0, v8, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1698
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v7

    if-ne v4, v6, :cond_5

    .line 1699
    invoke-direct {p0, v8, v0, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1702
    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v6

    if-ne v4, v6, :cond_6

    .line 1703
    invoke-direct {p0, v8, v0, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1709
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1711
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v7

    if-eq v4, v6, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    aget-boolean v4, v4, v6

    if-ne v4, v6, :cond_8

    .line 1714
    :cond_7
    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1721
    :cond_8
    const/4 v2, 0x0

    .line 1722
    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1723
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, v2, v3, v0, p2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1725
    invoke-direct {p0, v7, v7, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    goto :goto_0

    .line 1729
    .end local v0           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #number:Ljava/lang/String;
    :cond_9
    const-string v4, "HtcIccPbkEntryCache_QMI"

    const-string v5, "mSimPbkEntryList = null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    const-string v4, "error"

    invoke-direct {p0, p2, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 3032
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 3033
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v7, :cond_0

    .line 3034
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    new-instance v1, Ljava/lang/Exception;

    const-string v4, "SIM Phonebook Entries have been droped."

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 3038
    .local v1, ex:Ljava/lang/Exception;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v8, v8, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 3039
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 3043
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    .line 3044
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lt v4, v7, :cond_3

    .line 3045
    const-string v4, "HtcIccPbkEntryCache_QMI"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3046
    const/4 v2, 0x0

    .local v2, msgNum:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gt v2, v4, :cond_3

    .line 3047
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 3048
    .local v3, response:Landroid/os/Message;
    if-eqz v3, :cond_2

    .line 3049
    iget v4, v3, Landroid/os/Message;->what:I

    if-eqz v4, :cond_1

    .line 3050
    const-string v4, "error"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 3052
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 3046
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3057
    .end local v2           #msgNum:I
    .end local v3           #response:Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public dropSimPbkEntries()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2723
    const-string v1, "HtcIccPbkEntryCache_QMI"

    const-string v2, "dropSimPbkEntries()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    .line 2728
    const-string v1, "HtcIccPbkEntryCache_QMI"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDropSIMTimeStamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    invoke-virtual {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->dispose()V

    .line 2732
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->setLocalMemberToDefault()V

    .line 2734
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->setSIMSystemPropertiesToDefault()V

    .line 2736
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    .line 2737
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2738
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 2741
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 2742
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2743
    iput-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 2745
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 2746
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2749
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 2750
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2754
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2755
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2756
    iput-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 2760
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    .line 2761
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2765
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v1, :cond_6

    .line 2766
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->reset()V

    .line 2771
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    .line 2772
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2775
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 2776
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2779
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_9

    .line 2780
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2784
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    .line 2785
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2788
    :cond_a
    return-void
.end method

.method getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;
    .locals 4
    .parameter "num"
    .parameter "anrEntryIndex"

    .prologue
    const/4 v3, 0x0

    .line 2573
    const/4 v0, 0x0

    .line 2575
    .local v0, entry:Lcom/android/internal/telephony/AnrRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2589
    :goto_0
    return-object v2

    .line 2577
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p2, :cond_2

    move-object v2, v3

    .line 2578
    goto :goto_0

    .line 2580
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2581
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/internal/telephony/AnrRecord;
    check-cast v0, Lcom/android/internal/telephony/AnrRecord;

    .line 2583
    .restart local v0       #entry:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 2584
    goto :goto_0

    .line 2580
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 2589
    goto :goto_0
.end method

.method getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;
    .locals 4
    .parameter "num"

    .prologue
    const/4 v3, 0x0

    .line 2555
    const/4 v0, 0x0

    .line 2557
    .local v0, entry:Lcom/android/internal/telephony/EmailRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2569
    :goto_0
    return-object v2

    .line 2560
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2561
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/internal/telephony/EmailRecord;
    check-cast v0, Lcom/android/internal/telephony/EmailRecord;

    .line 2563
    .restart local v0       #entry:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 2564
    goto :goto_0

    .line 2560
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 2569
    goto :goto_0
.end method

.method getFirstEmptyPbkRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/PhoneBookEntry;
    .locals 8
    .parameter "number1"
    .parameter "number2"
    .parameter "emailaddress"

    .prologue
    const/4 v7, 0x0

    .line 2533
    const/4 v5, 0x0

    .line 2534
    .local v5, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 2551
    :goto_0
    return-object v0

    .line 2537
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 2538
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    check-cast v5, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 2539
    .restart local v5       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    iget v0, v5, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v4, v0, v1

    .line 2540
    .local v4, num:I
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2541
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v5

    .line 2542
    goto :goto_0

    .line 2544
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_3

    .line 2545
    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    add-int/2addr v0, v6

    iget v1, v5, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    sub-int v6, v0, v1

    .line 2537
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v4           #num:I
    :cond_4
    move-object v0, v7

    .line 2551
    goto :goto_0
.end method

.method getIAPIndex(I)I
    .locals 1
    .parameter "anrEntryIndex"

    .prologue
    .line 3013
    packed-switch p1, :pswitch_data_0

    .line 3019
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 3015
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3017
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 3013
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getNextEvent(III)I
    .locals 5
    .parameter "event"
    .parameter "num"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    .line 2950
    const/4 v0, 0x0

    .line 2951
    .local v0, nextEvent:I
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->convertEventToTag(II)I

    move-result v1

    .line 2952
    .local v1, tag:I
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v2, :cond_0

    .line 2953
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2954
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move p1, v0

    .line 2984
    .end local p1
    :cond_1
    :goto_1
    return p1

    .line 2958
    .restart local p1
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2961
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-eqz v2, :cond_3

    .line 2962
    const/16 p1, 0xb

    goto :goto_1

    .line 2965
    :cond_3
    const/16 v2, 0xc

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v0

    .line 2968
    goto :goto_0

    .line 2976
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-nez v2, :cond_1

    .line 2979
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v0

    goto :goto_0

    .line 2954
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 45
    .parameter "msg"

    .prologue
    .line 242
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v40, v0

    packed-switch v40, :pswitch_data_0

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    const-string v40, "EVENT_LOAD_PB_PBR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    if-eqz v40, :cond_3

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_2

    .line 248
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v25

    .line 249
    .local v25, iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v25, :cond_1

    .line 250
    const/16 v40, 0x4f22

    const/16 v41, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v41

    move-object/from16 v0, v25

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    .line 263
    .end local v25           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_0

    .line 264
    new-instance v33, Landroid/os/Bundle;

    invoke-direct/range {v33 .. v33}, Landroid/os/Bundle;-><init>()V

    .line 265
    .local v33, queryTimeStamp:Landroid/os/Bundle;
    const-string v40, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v41

    move-object/from16 v0, v33

    move-object/from16 v1, v40

    move-wide/from16 v2, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 266
    new-instance v40, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v42, v0

    invoke-direct/range {v40 .. v42}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v41, 0x6f4a

    const/16 v42, 0x8

    const/16 v43, 0x0

    const/16 v44, 0x6f4a

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 255
    .end local v33           #queryTimeStamp:Landroid/os/Bundle;
    :cond_2
    const-string v40, "Support Global phonebook"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 256
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    goto :goto_1

    .line 260
    :cond_3
    const-string v40, "Support Global phonebook"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 261
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    goto :goto_1

    .line 273
    :pswitch_1
    const-string v40, "EVENT_LOAD_PB_PSC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 274
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 275
    .local v13, ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_5

    .line 276
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, [B

    move-object/from16 v14, v40

    check-cast v14, [B

    .line 277
    .local v14, data:[B
    if-eqz v14, :cond_4

    array-length v0, v14

    move/from16 v40, v0

    if-lez v40, :cond_4

    .line 278
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Phonebook Synchronisation Counter: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 279
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x10

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v40

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPSC:J

    .line 280
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    .line 287
    .end local v14           #data:[B
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_0

    .line 289
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v25

    .line 290
    .restart local v25       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v25, :cond_0

    .line 291
    const/16 v40, 0x4f23

    const/16 v41, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v41

    move-object/from16 v0, v25

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 282
    .end local v25           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    .restart local v14       #data:[B
    :cond_4
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    goto :goto_2

    .line 285
    .end local v14           #data:[B
    :cond_5
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPSC:Z

    goto :goto_2

    .line 299
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    const-string v40, "EVENT_UPDATE_PB_PSC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 300
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 301
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 302
    const-string v40, "Update PB_PCS failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 307
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    const-string v40, "EVENT_LOAD_PB_CC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 308
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 309
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_7

    .line 310
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, [B

    move-object/from16 v14, v40

    check-cast v14, [B

    .line 311
    .restart local v14       #data:[B
    if-eqz v14, :cond_6

    array-length v0, v14

    move/from16 v40, v0

    if-lez v40, :cond_6

    .line 312
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Change Counter: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 313
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x10

    invoke-static/range {v40 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mChangeCounter:I

    .line 314
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    .line 321
    .end local v14           #data:[B
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_0

    .line 323
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v25

    .line 324
    .restart local v25       #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    if-eqz v25, :cond_0

    .line 325
    const/16 v40, 0x4f24

    const/16 v41, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v41

    move-object/from16 v0, v25

    move/from16 v1, v40

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 316
    .end local v25           #iccFh:Lcom/android/internal/telephony/IccFileHandler;
    .restart local v14       #data:[B
    :cond_6
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    goto :goto_3

    .line 319
    .end local v14           #data:[B
    :cond_7
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportCC:Z

    goto :goto_3

    .line 333
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v40, "EVENT_UPDATE_PB_CC_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 336
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 337
    const-string v40, "Update PB_CC failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v40, "EVENT_LOAD_PB_PUID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 345
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_9

    .line 346
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, [B

    move-object/from16 v14, v40

    check-cast v14, [B

    .line 347
    .restart local v14       #data:[B
    if-eqz v14, :cond_8

    array-length v0, v14

    move/from16 v40, v0

    if-lez v40, :cond_8

    .line 348
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Previous Unique Identifier: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 349
    invoke-static {v14}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v40

    const/16 v41, 0x10

    invoke-static/range {v40 .. v41}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPUID:I

    .line 350
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    .line 358
    .end local v14           #data:[B
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_0

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0xc2

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 362
    .local v16, efid:I
    if-eqz v16, :cond_a

    .line 363
    const/16 v40, 0x8

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 352
    .end local v16           #efid:I
    .restart local v14       #data:[B
    :cond_8
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    goto :goto_4

    .line 355
    .end local v14           #data:[B
    :cond_9
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportPUID:Z

    goto :goto_4

    .line 365
    .restart local v16       #efid:I
    :cond_a
    const/16 v40, 0x1

    const/16 v41, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 366
    const/16 v40, 0x9

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 374
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    :pswitch_6
    const-string v40, "EVENT_UPDATE_PB_PUID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 376
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 377
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 378
    const-string v40, "Update PB_PUID failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 384
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    const-string v40, "EVENT_LOAD_PB_UID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 385
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 386
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 387
    .local v20, event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 389
    .local v30, num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/Bundle;

    .line 391
    .local v32, queryTimeBundle:Landroid/os/Bundle;
    const-string v40, "query_sim_contact_file_timestamp"

    const-wide/16 v41, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    move-wide/from16 v2, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v33

    .line 393
    .local v33, queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v40, v0

    cmp-long v40, v33, v40

    if-ltz v40, :cond_0

    .line 397
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_c

    .line 398
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v39, v40

    check-cast v39, Ljava/util/ArrayList;

    .line 399
    .local v39, uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUIDRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 401
    add-int/lit8 v30, v30, 0x1

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v40

    move/from16 v0, v30

    move/from16 v1, v40

    if-ge v0, v1, :cond_b

    .line 403
    const/16 v40, 0xa

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v30

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 413
    .end local v39           #uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :goto_5
    if-eqz v20, :cond_0

    .line 414
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v29

    .line 415
    .local v29, next_event:I
    if-eqz v29, :cond_d

    .line 416
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "next_event = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 405
    .end local v29           #next_event:I
    .restart local v39       #uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :cond_b
    const/16 v20, 0xb

    goto :goto_5

    .line 408
    .end local v39           #uidRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/UIDRecord;>;"
    :cond_c
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "EVENT_LOAD_PB_UID_DONE Failed: num = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ar.exception = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/16 v20, 0xb

    goto :goto_5

    .line 419
    .restart local v29       #next_event:I
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 426
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v20           #event:I
    .end local v29           #next_event:I
    .end local v30           #num:I
    .end local v32           #queryTimeBundle:Landroid/os/Bundle;
    .end local v33           #queryTimeStamp:J
    :pswitch_8
    const-string v40, "EVENT_UPDATE_PB_UID_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 428
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 429
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 430
    const-string v40, "Update PB_UID failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 437
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const-string v40, "EVENT_LOAD_PB_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 438
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 439
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/Bundle;

    .line 441
    .restart local v32       #queryTimeBundle:Landroid/os/Bundle;
    const-string v40, "query_sim_contact_file_timestamp"

    const-wide/16 v41, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    move-wide/from16 v2, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v33

    .line 443
    .restart local v33       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v40, v0

    cmp-long v40, v33, v40

    if-ltz v40, :cond_0

    .line 446
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_e

    .line 447
    const/16 v40, 0x1

    const/16 v41, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 448
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    .line 453
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v40, v0

    if-nez v40, :cond_10

    .line 454
    const/16 v40, 0x9

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v20

    .line 455
    .restart local v20       #event:I
    if-eqz v20, :cond_f

    .line 456
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 450
    .end local v20           #event:I
    :cond_e
    const/16 v40, 0x1

    const/16 v41, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    goto :goto_6

    .line 458
    .restart local v20       #event:I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 461
    .end local v20           #event:I
    :cond_10
    const-string v40, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v41

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    move-wide/from16 v2, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 462
    new-instance v40, Lcom/android/internal/telephony/ADNRecordLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v42, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v43, v0

    invoke-direct/range {v40 .. v43}, Lcom/android/internal/telephony/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v41, 0x6f3a

    const/16 v42, 0x9

    const/16 v43, 0x0

    const/16 v44, 0x6f3a

    move-object/from16 v0, p0

    move/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/ADNRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 469
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v32           #queryTimeBundle:Landroid/os/Bundle;
    .end local v33           #queryTimeStamp:J
    :pswitch_a
    const-string v40, "EVENT_LOAD_PB_ADN_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 472
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 473
    .restart local v20       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 475
    .restart local v30       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/Bundle;

    .line 477
    .restart local v32       #queryTimeBundle:Landroid/os/Bundle;
    const-string v40, "query_sim_contact_file_timestamp"

    const-wide/16 v41, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    move-wide/from16 v2, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v33

    .line 479
    .restart local v33       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v40, v0

    cmp-long v40, v33, v40

    if-ltz v40, :cond_0

    .line 483
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_1b

    .line 484
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v6, v40

    check-cast v6, Ljava/util/ArrayList;

    .line 485
    .local v6, adnRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcAdnRecord;>;"
    if-nez v30, :cond_13

    .line 486
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    .line 488
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_12

    .line 489
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 496
    :cond_11
    :goto_7
    const/16 v40, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 498
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v40, v0

    if-lez v40, :cond_13

    .line 499
    new-instance v40, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    invoke-direct/range {v40 .. v41}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_13

    .line 501
    const/16 v23, 0x0

    .local v23, i:I
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v40, v0

    move/from16 v0, v23

    move/from16 v1, v40

    if-ge v0, v1, :cond_13

    .line 502
    new-instance v18, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 503
    .local v18, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v40, v23, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v23, v23, 0x1

    goto :goto_8

    .line 491
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v23           #i:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    if-eqz v40, :cond_11

    .line 492
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v41, v0

    invoke-virtual/range {v41 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v41

    mul-int v40, v40, v41

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    goto :goto_7

    .line 510
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1a

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 517
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v23

    move/from16 v1, v40

    if-ge v0, v1, :cond_16

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/HtcAdnRecord;

    .line 519
    .local v5, adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_14

    .line 520
    const/4 v7, 0x0

    .line 521
    .local v7, adnRecordNumber:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v40, v0

    mul-int v40, v40, v30

    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    move/from16 v41, v0

    add-int v7, v40, v41

    .line 524
    if-lez v7, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v40

    if-gt v7, v0, :cond_15

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v7, -0x1

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 528
    .local v31, pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 529
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 530
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 532
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pbkEntry.index = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 535
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pbkEntry.indexEmail = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 538
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pbkEntry.email = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 517
    .end local v7           #adnRecordNumber:I
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_14
    :goto_a
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_9

    .line 540
    .restart local v7       #adnRecordNumber:I
    :cond_15
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 546
    .end local v5           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v7           #adnRecordNumber:I
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v40, v0

    if-nez v40, :cond_19

    .line 547
    add-int/lit8 v30, v30, 0x1

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v40

    move/from16 v0, v30

    move/from16 v1, v40

    if-ge v0, v1, :cond_17

    .line 549
    const/16 v40, 0x9

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v30

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 556
    :goto_b
    if-eqz v20, :cond_0

    .line 557
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v29

    .line 558
    .restart local v29       #next_event:I
    if-eqz v29, :cond_18

    .line 559
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "next_event = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 552
    .end local v29           #next_event:I
    :cond_17
    const/16 v20, 0xa

    goto :goto_b

    .line 562
    .restart local v29       #next_event:I
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 566
    .end local v29           #next_event:I
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 569
    .end local v23           #i:I
    :cond_1a
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "mSimPbkEntryList is null"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 573
    .end local v6           #adnRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcAdnRecord;>;"
    :cond_1b
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "EVENT_LOAD_PB_ADN_DONE Failed: num = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ar.exception = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0xc0

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_1c

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    .line 579
    const/16 v40, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 581
    :cond_1c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 586
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v20           #event:I
    .end local v30           #num:I
    .end local v32           #queryTimeBundle:Landroid/os/Bundle;
    .end local v33           #queryTimeStamp:J
    :pswitch_b
    const-string v40, "EVENT_LOAD_PB_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 588
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 589
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 590
    .restart local v20       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 591
    .restart local v30       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/Bundle;

    .line 593
    .restart local v32       #queryTimeBundle:Landroid/os/Bundle;
    const-string v40, "query_sim_contact_file_timestamp"

    const-wide/16 v41, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    move-wide/from16 v2, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v33

    .line 595
    .restart local v33       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v40, v0

    cmp-long v40, v33, v40

    if-ltz v40, :cond_0

    .line 599
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_1f

    .line 600
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v24, v40

    check-cast v24, Ljava/util/ArrayList;

    .line 601
    .local v24, iapRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 603
    add-int/lit8 v30, v30, 0x1

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v40

    move/from16 v0, v30

    move/from16 v1, v40

    if-ge v0, v1, :cond_1d

    .line 605
    const/16 v40, 0xb

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v30

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 610
    :goto_c
    if-eqz v20, :cond_0

    .line 611
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v29

    .line 612
    .restart local v29       #next_event:I
    if-eqz v29, :cond_1e

    .line 613
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "next_event = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 607
    .end local v29           #next_event:I
    :cond_1d
    const/16 v20, 0xc

    goto :goto_c

    .line 616
    .restart local v29       #next_event:I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 620
    .end local v24           #iapRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    .end local v29           #next_event:I
    :cond_1f
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "EVENT_LOAD_PB_IAP_DONE Failed: num = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ar.exception = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    .line 624
    const/16 v20, 0xc

    .line 626
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "remove IAP file from mPbrFile.mFileIds catch"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0xc1

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v40

    if-eqz v40, :cond_20

    .line 630
    const/16 v20, 0x8

    .line 631
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0xca

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 635
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    invoke-virtual/range {v40 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v40

    if-nez v40, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    const/16 v41, 0x1

    invoke-virtual/range {v40 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v40

    if-eqz v40, :cond_22

    .line 636
    :cond_21
    const/16 v20, 0x0

    .line 637
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "remove ANR1 file from mPbrFile.mFileIds catch"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 640
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "remove ANR2 file from mPbrFile.mFileIds catch"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 644
    :cond_22
    if-eqz v20, :cond_24

    .line 645
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v29

    .line 646
    .restart local v29       #next_event:I
    if-eqz v29, :cond_23

    .line 647
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "next_event = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 650
    :cond_23
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 653
    .end local v29           #next_event:I
    :cond_24
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 660
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v20           #event:I
    .end local v30           #num:I
    .end local v32           #queryTimeBundle:Landroid/os/Bundle;
    .end local v33           #queryTimeStamp:J
    :pswitch_c
    const-string v40, "EVENT_LOAD_PB_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 662
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 664
    .restart local v13       #ar:Landroid/os/AsyncResult;
    const/16 v20, 0x0

    .line 665
    .restart local v20       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 666
    .restart local v30       #num:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 667
    .restart local v16       #efid:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/Bundle;

    .line 669
    .restart local v32       #queryTimeBundle:Landroid/os/Bundle;
    const-string v40, "query_sim_contact_file_timestamp"

    const-wide/16 v41, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    move-wide/from16 v2, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v33

    .line 671
    .restart local v33       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v40, v0

    cmp-long v40, v33, v40

    if-ltz v40, :cond_0

    .line 674
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_2c

    .line 675
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v27, v40

    check-cast v27, Ljava/util/ArrayList;

    .line 677
    .local v27, mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v40

    move/from16 v0, v30

    move/from16 v1, v40

    if-ge v0, v1, :cond_2a

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 683
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v23

    move/from16 v1, v40

    if-ge v0, v1, :cond_29

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/telephony/EmailRecord;

    .line 686
    .local v17, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_25

    .line 687
    const/4 v7, 0x0

    .line 688
    .restart local v7       #adnRecordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_26

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v35

    .line 691
    .local v35, recNum:I
    if-lez v35, :cond_27

    .line 692
    add-int/lit8 v40, v35, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v40, v40, v41

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v41, v0

    add-int v7, v40, v41

    .line 696
    if-lez v7, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v40

    if-gt v7, v0, :cond_27

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v7, -0x1

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 699
    .restart local v31       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v31, :cond_27

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_27

    .line 700
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pbkEntry.index = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 701
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "emailEntry.index = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 702
    const-string v40, "Becasue the corresponding pbkEntry entry is empty, clear email entry."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 683
    .end local v7           #adnRecordNumber:I
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v35           #recNum:I
    :cond_25
    :goto_e
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_d

    .line 710
    .restart local v7       #adnRecordNumber:I
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v40, v0

    mul-int v40, v40, v30

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v41, v0

    add-int v7, v40, v41

    .line 714
    :cond_27
    if-lez v7, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v40

    if-gt v7, v0, :cond_28

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v7, -0x1

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 717
    .restart local v31       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 718
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 720
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pbkEntry.index = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 723
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pbkEntry.indexEmail = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 726
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pbkEntry.email = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 728
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_28
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 734
    .end local v7           #adnRecordNumber:I
    .end local v17           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    :cond_29
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "mEmailRecordList size = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 737
    .end local v23           #i:I
    :cond_2a
    const/16 v40, 0x1

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 738
    const/16 v40, 0x4

    const/16 v41, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 740
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "mEmailRecordList num = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 744
    add-int/lit8 v30, v30, 0x1

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v40

    move/from16 v0, v30

    move/from16 v1, v40

    if-ge v0, v1, :cond_2b

    .line 746
    const/16 v40, 0xc

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v30

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 764
    .end local v27           #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :goto_f
    if-eqz v20, :cond_0

    .line 765
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v29

    .line 766
    .restart local v29       #next_event:I
    if-eqz v29, :cond_2d

    .line 767
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 748
    .end local v29           #next_event:I
    .restart local v27       #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_2b
    const/16 v20, 0xd

    goto :goto_f

    .line 751
    .end local v27           #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_2c
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "EVENT_LOAD_PB_EMAIL_DONE Failed: num = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ar.exception = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/HashMap;->clear()V

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    .line 756
    const/16 v20, 0xd

    .line 757
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    .line 758
    const/16 v40, 0x4

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 760
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0xca

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    goto/16 :goto_f

    .line 769
    .restart local v29       #next_event:I
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 776
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    .end local v20           #event:I
    .end local v29           #next_event:I
    .end local v30           #num:I
    .end local v32           #queryTimeBundle:Landroid/os/Bundle;
    .end local v33           #queryTimeStamp:J
    :pswitch_d
    const-string v40, "EVENT_LOAD_PB_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 778
    :try_start_0
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 779
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 780
    .restart local v30       #num:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 781
    .local v8, anrEntryIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 783
    .restart local v16       #efid:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/os/Bundle;

    .line 785
    .restart local v32       #queryTimeBundle:Landroid/os/Bundle;
    const-string v40, "query_sim_contact_file_timestamp"

    const-wide/16 v41, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    move-wide/from16 v2, v41

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v33

    .line 787
    .restart local v33       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mDropSIMTimeStamp:J

    move-wide/from16 v40, v0

    cmp-long v40, v33, v40

    if-ltz v40, :cond_0

    .line 790
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_3c

    .line 791
    if-eqz v16, :cond_2e

    .line 794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v8, v0, :cond_30

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .line 799
    .local v9, anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_10
    if-eqz v9, :cond_2e

    .line 800
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v8, v0, :cond_31

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 809
    .end local v9           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_2e
    :goto_11
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    check-cast v0, Ljava/util/ArrayList;

    move-object v12, v0

    .line 812
    .local v12, anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez v8, :cond_32

    .line 813
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 817
    .local v10, anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_12
    if-eqz v10, :cond_3b

    .line 818
    invoke-virtual {v10, v8, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 819
    if-nez v8, :cond_33

    .line 820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 828
    :goto_13
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_14
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v23

    move/from16 v1, v40

    if-ge v0, v1, :cond_37

    .line 829
    move/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/AnrRecord;

    .line 831
    .local v11, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v11}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_2f

    .line 832
    const/4 v7, 0x0

    .line 833
    .restart local v7       #adnRecordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_34

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v35

    .line 836
    .restart local v35       #recNum:I
    if-lez v35, :cond_35

    .line 837
    add-int/lit8 v40, v35, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v41, v0

    mul-int v40, v40, v41

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v41, v0

    add-int v7, v40, v41

    .line 843
    if-lez v7, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v40

    if-gt v7, v0, :cond_35

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v7, -0x1

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 846
    .restart local v31       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v31, :cond_35

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v40

    if-eqz v40, :cond_35

    .line 847
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pbkEntry.index = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 848
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "ANREntry.index = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 849
    const-string v40, "Becasue the corresponding pbkEntry entry is empty, clear ANR entry."

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 850
    invoke-virtual {v11}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 828
    .end local v7           #adnRecordNumber:I
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v35           #recNum:I
    :cond_2f
    :goto_15
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_14

    .line 797
    .end local v10           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v11           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v12           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v23           #i:I
    :cond_30
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .restart local v9       #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto/16 :goto_10

    .line 804
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v0, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_11

    .line 932
    .end local v8           #anrEntryIndex:I
    .end local v9           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    .end local v30           #num:I
    .end local v32           #queryTimeBundle:Landroid/os/Bundle;
    .end local v33           #queryTimeStamp:J
    :catch_0
    move-exception v15

    .line 933
    .local v15, e:Ljava/lang/Exception;
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "ANR arraylist problem"

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    invoke-static {v0, v1, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 815
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v8       #anrEntryIndex:I
    .restart local v12       #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .restart local v13       #ar:Landroid/os/AsyncResult;
    .restart local v16       #efid:I
    .restart local v30       #num:I
    .restart local v32       #queryTimeBundle:Landroid/os/Bundle;
    .restart local v33       #queryTimeStamp:J
    :cond_32
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .restart local v10       #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto/16 :goto_12

    .line 822
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_13

    .line 857
    .restart local v7       #adnRecordNumber:I
    .restart local v11       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .restart local v23       #i:I
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v40, v0

    mul-int v40, v40, v30

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v41, v0

    add-int v7, v40, v41

    .line 862
    :cond_35
    if-lez v7, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v40

    if-gt v7, v0, :cond_36

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v7, -0x1

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 865
    .restart local v31       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v40, v0

    iget v0, v11, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v41, v0

    aput v41, v40, v8

    .line 866
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v40, v0

    iget-object v0, v11, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v41, v0

    aput-object v41, v40, v8

    .line 868
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pbkEntry.index = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v41, v0

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 871
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pbkEntry.indexAnr = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v41, v0

    aget v41, v41, v8

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 875
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "pbkEntry.adnumber = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v41, v0

    aget-object v41, v41, v8

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 878
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_36
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 884
    .end local v7           #adnRecordNumber:I
    .end local v11           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_37
    const/16 v40, 0x2

    move/from16 v0, v40

    if-ge v8, v0, :cond_38

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v40, v0

    const/16 v41, 0x1

    aput-boolean v41, v40, v8

    .line 886
    const/16 v40, 0x3

    add-int/lit8 v41, v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 889
    :cond_38
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "mAnrRecordList num = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 891
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "mAnrRecordList anrEntryIndex = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 894
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "mAnrRecordList size = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v41

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 897
    add-int/lit8 v8, v8, 0x1

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v40

    move/from16 v0, v40

    if-ge v8, v0, :cond_39

    const/16 v40, 0x2

    move/from16 v0, v40

    if-ge v8, v0, :cond_39

    .line 900
    const/16 v40, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 903
    :cond_39
    add-int/lit8 v30, v30, 0x1

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v40

    move/from16 v0, v30

    move/from16 v1, v40

    if-ge v0, v1, :cond_3a

    .line 905
    const/4 v8, 0x0

    .line 906
    const/16 v40, 0xd

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 910
    :cond_3a
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 914
    .end local v23           #i:I
    :cond_3b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 917
    .end local v10           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v12           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_3c
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "EVENT_LOAD_PB_ANR_DONE Failed, num = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " anrEntryIndex = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " ar.exception = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->clear()V

    .line 923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x1

    invoke-virtual/range {v40 .. v42}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 926
    const/16 v40, 0x3

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    aput-boolean v42, v40, v41

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    move-object/from16 v40, v0

    const/16 v41, 0x1

    const/16 v42, 0x0

    aput-boolean v42, v40, v41

    .line 930
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 940
    .end local v8           #anrEntryIndex:I
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v16           #efid:I
    .end local v30           #num:I
    .end local v32           #queryTimeBundle:Landroid/os/Bundle;
    .end local v33           #queryTimeStamp:J
    :pswitch_e
    const-string v40, "EVENT_GET_PB_USED_NUM_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 941
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 944
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_3f

    .line 945
    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/internal/telephony/PhoneBookMemory;

    .line 947
    .local v26, mPBMemory:Lcom/android/internal/telephony/PhoneBookMemory;
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "get PB length:total="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " used="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 948
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 949
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUsed:I

    .line 950
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "get PB length:total="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " used="

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUsed:I

    move/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 953
    new-instance v40, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    invoke-direct/range {v40 .. v41}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 955
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v40, v0

    move/from16 v0, v23

    move/from16 v1, v40

    if-ge v0, v1, :cond_3d

    .line 956
    new-instance v18, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 957
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v40, v23, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    add-int/lit8 v23, v23, 0x1

    goto :goto_16

    .line 961
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v40, v0

    if-lez v40, :cond_3e

    .line 962
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollPBList()V

    goto/16 :goto_0

    .line 964
    :cond_3e
    const-string v40, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 965
    const/16 v40, 0x0

    move-object/from16 v0, v40

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 969
    .end local v23           #i:I
    .end local v26           #mPBMemory:Lcom/android/internal/telephony/PhoneBookMemory;
    :cond_3f
    const-string v40, "Cannot get PB memory"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 972
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    .line 974
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v40, v0

    if-lez v40, :cond_41

    .line 975
    new-instance v40, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v41, v0

    invoke-direct/range {v40 .. v41}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 977
    const/16 v23, 0x0

    .restart local v23       #i:I
    :goto_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mTotal:I

    move/from16 v40, v0

    move/from16 v0, v23

    move/from16 v1, v40

    if-ge v0, v1, :cond_40

    .line 978
    new-instance v18, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 979
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v40, v23, 0x1

    move/from16 v0, v40

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    add-int/lit8 v23, v23, 0x1

    goto :goto_17

    .line 983
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_40
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollPBList()V

    goto/16 :goto_0

    .line 985
    .end local v23           #i:I
    :cond_41
    const-string v40, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 986
    const/16 v40, 0x0

    move-object/from16 v0, v40

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 995
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_f
    const-string v40, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 996
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 997
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_42

    .line 998
    const-string v40, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 999
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handlePollPBResult(ILandroid/os/AsyncResult;)V

    .line 1004
    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget v42, v40, v41

    add-int/lit8 v42, v42, -0x1

    aput v42, v40, v41

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->pollingContext:[I

    move-object/from16 v40, v0

    const/16 v41, 0x0

    aget v40, v40, v41

    if-nez v40, :cond_0

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    iput-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1009
    const-string v40, "load Phonebook Entries Complete!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1011
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v40

    if-nez v40, :cond_0

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1001
    :cond_42
    const-string v40, "Error on loading PB"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto :goto_18

    .line 1023
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    const-string v40, "EVENT_ADD_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1024
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1025
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 1026
    .local v28, msgNum:I
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1027
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/Message;

    .line 1029
    .local v38, response:Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_43

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1031
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1034
    :cond_43
    const-string v40, "Cannot add PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1036
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 1038
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v40, v0

    if-eqz v40, :cond_44

    .line 1039
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/internal/telephony/CommandException;

    check-cast v40, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v19

    .line 1042
    .local v19, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v40, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_44

    .line 1043
    const-string v40, "Cannot add PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1044
    const-string v40, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1049
    .end local v19           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_44
    const-string v40, "add falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1056
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v28           #msgNum:I
    .end local v38           #response:Landroid/os/Message;
    :pswitch_11
    const-string v40, "EVENT_UPDATE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1057
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1058
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 1059
    .restart local v28       #msgNum:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v30, v0

    .line 1060
    .restart local v30       #num:I
    iget-object v5, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/HtcAdnRecord;

    .line 1061
    .restart local v5       #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/Message;

    .line 1063
    .restart local v38       #response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1065
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_4e

    .line 1066
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v40, v0

    mul-int v40, v40, v30

    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    move/from16 v41, v0

    add-int v7, v40, v41

    .line 1068
    .restart local v7       #adnRecordNumber:I
    if-lez v7, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v40

    if-gt v7, v0, :cond_4d

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v7, -0x1

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1070
    .restart local v31       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v31, :cond_45

    .line 1071
    iget-object v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 1072
    iget-object v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->number:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 1073
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v40, v0

    if-eqz v40, :cond_48

    .line 1074
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v40

    move/from16 v0, v40

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1083
    :cond_45
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mADNRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->recordNumber:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1086
    invoke-virtual {v5}, Lcom/android/internal/telephony/HtcAdnRecord;->hasExtendedRecord()Z

    move-result v40

    if-eqz v40, :cond_4c

    .line 1088
    const/16 v16, 0x0

    .line 1089
    .restart local v16       #efid:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    move/from16 v40, v0

    if-nez v40, :cond_49

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    if-eqz v40, :cond_46

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_46

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    const/16 v41, 0xc2

    move-object/from16 v0, v40

    move/from16 v1, v30

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 1099
    :cond_46
    :goto_1a
    if-eqz v16, :cond_4b

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_4a

    .line 1102
    iget v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    move/from16 v22, v0

    .line 1103
    .local v22, ext1index:I
    if-lez v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v22

    move/from16 v1, v40

    if-gt v0, v1, :cond_0

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v22, -0x1

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/HtcExt1Record;

    .line 1105
    .local v21, ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v28

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1106
    const/16 v40, 0xf

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mMsgNumber:I

    move/from16 v41, v0

    const/16 v42, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1109
    .local v37, res:Landroid/os/Message;
    iget-boolean v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->mClearExt1Record:Z

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_47

    .line 1110
    const/16 v40, 0xff

    move/from16 v0, v40

    iput v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->extRecord:I

    .line 1111
    const/16 v40, 0x0

    move/from16 v0, v40

    iput-boolean v0, v5, Lcom/android/internal/telephony/HtcAdnRecord;->mClearExt1Record:Z

    .line 1113
    :cond_47
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v21

    move/from16 v3, v16

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1076
    .end local v16           #efid:I
    .end local v21           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v22           #ext1index:I
    .end local v37           #res:Landroid/os/Message;
    :cond_48
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    move-object/from16 v40, v0

    if-nez v40, :cond_45

    .line 1077
    const/16 v40, -0x1

    move/from16 v0, v40

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1078
    const/16 v40, -0x1

    move/from16 v0, v40

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    .line 1079
    const/16 v40, -0x1

    move/from16 v0, v40

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->adtype:I

    goto/16 :goto_19

    .line 1097
    .restart local v16       #efid:I
    :cond_49
    const/16 v16, 0x6f4a

    goto/16 :goto_1a

    .line 1116
    :cond_4a
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "mExt1RecordList is null, but it shall not"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1119
    :cond_4b
    const-string v40, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1122
    .end local v16           #efid:I
    :cond_4c
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1125
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_4d
    const-string v40, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1128
    .end local v7           #adnRecordNumber:I
    :cond_4e
    const-string v40, "Cannot update PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1130
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v40, v0

    if-eqz v40, :cond_4f

    .line 1131
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    check-cast v40, Lcom/android/internal/telephony/CommandException;

    check-cast v40, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v19

    .line 1134
    .restart local v19       #err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v40, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v19

    move-object/from16 v1, v40

    if-ne v0, v1, :cond_4f

    .line 1135
    const-string v40, "Cannot update PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1136
    const-string v40, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1141
    .end local v19           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_4f
    const-string v40, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1147
    .end local v5           #adnRecord:Lcom/android/internal/telephony/HtcAdnRecord;
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v28           #msgNum:I
    .end local v30           #num:I
    .end local v38           #response:Landroid/os/Message;
    :pswitch_12
    const-string v40, "EVENT_UPDATE_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1148
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1149
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 1150
    .restart local v28       #msgNum:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/Message;

    .line 1151
    .restart local v38       #response:Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_50

    .line 1152
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1154
    :cond_50
    const-string v40, "Cannot update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1155
    const-string v40, "update failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1161
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v28           #msgNum:I
    .end local v38           #response:Landroid/os/Message;
    :pswitch_13
    const-string v40, "EVENT_UPDATE_ANR_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1162
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1164
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_51

    .line 1165
    const-string v40, "Update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1167
    :cond_51
    const-string v40, "Cannot update EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1173
    .end local v13           #ar:Landroid/os/AsyncResult;
    :pswitch_14
    const-string v40, "EVENT_DELETE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1174
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1175
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 1176
    .restart local v28       #msgNum:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v36, v0

    .line 1177
    .local v36, recordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/os/Message;

    .line 1179
    .restart local v38       #response:Landroid/os/Message;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_52

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v36, -0x1

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1182
    .restart local v18       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 1183
    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    move-object/from16 v3, v41

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1185
    .end local v18           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_52
    const-string v40, "Cannot delete PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1186
    const-string v40, "delete falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1192
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v28           #msgNum:I
    .end local v36           #recordNumber:I
    .end local v38           #response:Landroid/os/Message;
    :pswitch_15
    const-string v40, "EVENT_UPDATE_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1193
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1194
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1195
    .restart local v30       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_55

    .line 1196
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/IAPRecord;

    .line 1198
    .local v18, entry:Lcom/android/internal/telephony/IAPRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v30

    move/from16 v1, v40

    if-ge v0, v1, :cond_54

    .line 1199
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v40, v0

    if-lez v40, :cond_53

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v41

    move/from16 v1, v40

    if-gt v0, v1, :cond_53

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1203
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "num = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "IAPRecord.mRecordNumber = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1207
    :cond_53
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "out of IAP index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1210
    :cond_54
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "out of mIAPRecordList.size() = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1213
    .end local v18           #entry:Lcom/android/internal/telephony/IAPRecord;
    :cond_55
    const-string v40, "Update IAP entry failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1219
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v30           #num:I
    :pswitch_16
    const-string v40, "EVENT_UPDATE_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1221
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1222
    .restart local v13       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1224
    .restart local v30       #num:I
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_5a

    .line 1225
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/EmailRecord;

    .line 1226
    .local v18, entry:Lcom/android/internal/telephony/EmailRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v30

    move/from16 v1, v40

    if-ge v0, v1, :cond_59

    .line 1227
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_56

    .line 1228
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v40, v0

    if-lez v40, :cond_58

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v41

    move/from16 v1, v40

    if-gt v0, v1, :cond_58

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1233
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v40, v0

    mul-int v40, v40, v30

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v41, v0

    add-int v7, v40, v41

    .line 1235
    .restart local v7       #adnRecordNumber:I
    if-lez v7, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v40

    if-gt v7, v0, :cond_57

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v7, -0x1

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1238
    .restart local v31       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v31, :cond_56

    .line 1239
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, v31

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 1240
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 1250
    .end local v7           #adnRecordNumber:I
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_56
    :goto_1b
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "num = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "EmailRecord.mRecordNumber = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "EmailRecord.mAdnRecordNumber ="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 1257
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "EmailRecord.mEmailAddress ="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1243
    .restart local v7       #adnRecordNumber:I
    :cond_57
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1246
    .end local v7           #adnRecordNumber:I
    :cond_58
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "out of E-mail index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1261
    :cond_59
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "out of mEmailRecordList.size() = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1264
    .end local v18           #entry:Lcom/android/internal/telephony/EmailRecord;
    :cond_5a
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "updateEmailRecord failed"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1270
    .end local v13           #ar:Landroid/os/AsyncResult;
    .end local v30           #num:I
    :pswitch_17
    const-string v40, "EVENT_UPDATE_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1272
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 1273
    .restart local v30       #num:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 1275
    .restart local v8       #anrEntryIndex:I
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/os/AsyncResult;

    .line 1277
    .restart local v13       #ar:Landroid/os/AsyncResult;
    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v40, v0

    if-nez v40, :cond_63

    const/16 v40, 0x2

    move/from16 v0, v40

    if-ge v8, v0, :cond_63

    .line 1279
    iget-object v0, v13, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/AnrRecord;

    .line 1281
    .local v18, entry:Lcom/android/internal/telephony/AnrRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v30

    move/from16 v1, v40

    if-ge v0, v1, :cond_62

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v40

    if-ge v8, v0, :cond_61

    .line 1283
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v40

    if-nez v40, :cond_5b

    .line 1285
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v40, v0

    if-lez v40, :cond_5f

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v41, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v41

    move/from16 v1, v40

    if-gt v0, v1, :cond_5f

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v41, v0

    add-int/lit8 v41, v41, -0x1

    move-object/from16 v0, v40

    move/from16 v1, v41

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1290
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    move/from16 v40, v0

    mul-int v40, v40, v30

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v41, v0

    add-int v7, v40, v41

    .line 1292
    .restart local v7       #adnRecordNumber:I
    if-lez v7, :cond_5e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v40

    if-gt v7, v0, :cond_5e

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v7, -0x1

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1296
    .restart local v31       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v31, :cond_5b

    .line 1297
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v40, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v41, v0

    aput v41, v40, v8

    .line 1298
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v41, v0

    aput-object v41, v40, v8

    .line 1309
    .end local v7           #adnRecordNumber:I
    .end local v31           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_5b
    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    if-eqz v40, :cond_5d

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v40

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_5d

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v40, v0

    const/16 v41, 0xc2

    move-object/from16 v0, v40

    move/from16 v1, v30

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v16

    .line 1313
    .restart local v16       #efid:I
    if-eqz v16, :cond_5d

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    if-eqz v40, :cond_60

    .line 1315
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    move/from16 v22, v0

    .line 1316
    .restart local v22       #ext1index:I
    if-lez v22, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v40

    move/from16 v0, v22

    move/from16 v1, v40

    if-gt v0, v1, :cond_5d

    .line 1317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v40, v0

    add-int/lit8 v41, v22, -0x1

    invoke-virtual/range {v40 .. v41}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/internal/telephony/HtcExt1Record;

    .line 1318
    .restart local v21       #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    const/16 v40, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v37

    .line 1319
    .restart local v37       #res:Landroid/os/Message;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    move/from16 v40, v0

    const/16 v41, 0x1

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_5c

    .line 1320
    const/16 v40, 0xff

    move/from16 v0, v40

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 1321
    const/16 v40, 0x0

    move/from16 v0, v40

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 1323
    :cond_5c
    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    move/from16 v1, v40

    move-object/from16 v2, v21

    move/from16 v3, v16

    move-object/from16 v4, v37

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V

    .line 1332
    .end local v16           #efid:I
    .end local v21           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v22           #ext1index:I
    .end local v37           #res:Landroid/os/Message;
    :cond_5d
    :goto_1d
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "num = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "anrEntryIndex = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "AnrRecord.mRecordNumber = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "AnrRecord.mAdnRecordNumber ="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    .line 1340
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "AnrRecord.mNumber ="

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1301
    .restart local v7       #adnRecordNumber:I
    :cond_5e
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1304
    .end local v7           #adnRecordNumber:I
    :cond_5f
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "out of Anr index = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v42, v0

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    .line 1326
    .restart local v16       #efid:I
    :cond_60
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "mExt1RecordList is null, but it shall not"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .line 1343
    .end local v16           #efid:I
    :cond_61
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "anrEntryIndex out of mAnrRecordLists.get(num).size = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1346
    :cond_62
    const-string v40, "HtcIccPbkEntryCache_QMI"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "num out of mAnrRecordLists.size() = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1349
    .end local v18           #entry:Lcom/android/internal/telephony/AnrRecord;
    :cond_63
    const-string v40, "HtcIccPbkEntryCache_QMI"

    const-string v41, "updateAnrRecord failed"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 242
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_14
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_7
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_12
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_13
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method handleNextSequence(III)V
    .locals 17
    .parameter "event"
    .parameter "num"
    .parameter "index"

    .prologue
    .line 2793
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v13, :cond_1

    .line 2945
    :cond_0
    :goto_0
    return-void

    .line 2797
    :cond_1
    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 2798
    .local v11, queryTimeBundle:Landroid/os/Bundle;
    const-string v13, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    invoke-virtual {v11, v13, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2800
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v13, :cond_0

    .line 2801
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 2802
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->convertEventToTag(II)I

    move-result v12

    .line 2803
    .local v12, tag:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p2

    invoke-virtual {v13, v0, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v6

    .line 2804
    .local v6, efid:I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2867
    :pswitch_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-EXT1 num:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2870
    new-instance v13, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0x8

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_0

    .line 2808
    :pswitch_1
    new-instance v13, Lcom/android/internal/telephony/UIDRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/UIDRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/UIDRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2817
    :pswitch_2
    new-instance v13, Lcom/android/internal/telephony/ADNRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lcom/android/internal/telephony/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0x9

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/ADNRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2823
    :pswitch_3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-IAP num:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2826
    new-instance v13, Lcom/android/internal/telephony/IAPRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0xb

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v14}, Lcom/android/internal/telephony/IAPRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2832
    :pswitch_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-EMAIL num:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2833
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 2834
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2835
    .local v7, fileindex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_4

    .line 2836
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v13, v0, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2839
    add-int/lit8 p2, p2, 0x1

    .line 2840
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_2

    .line 2841
    const/16 v13, 0xc

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v13, v1, v14}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 2844
    :cond_2
    const/16 v13, 0xd

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getNextEvent(III)I

    move-result v10

    .line 2846
    .local v10, next_event:I
    if-eqz v10, :cond_3

    .line 2847
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v13, v14}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 2849
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 2853
    .end local v10           #next_event:I
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fileindex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ">"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "EmailRecordList.size():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2856
    .end local v7           #fileindex:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v9

    .line 2859
    .local v9, inIAP:Z
    new-instance v13, Lcom/android/internal/telephony/EmailRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v13, v14, v15}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0xc

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v14, v1, v6, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v9, v14}, Lcom/android/internal/telephony/EmailRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2876
    .end local v9           #inIAP:Z
    :pswitch_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Read EF-ANR num"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "index:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 2877
    const/4 v8, 0x1

    .line 2878
    .local v8, flag:Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, p3

    if-ge v0, v13, :cond_8

    .line 2879
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrFileList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 2880
    .local v3, anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2881
    const/4 v8, 0x0

    .line 2882
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 2884
    .restart local v7       #fileindex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    move/from16 v0, p3

    if-ge v0, v13, :cond_d

    .line 2885
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 2889
    .local v5, anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez p3, :cond_9

    .line 2890
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2895
    .local v4, anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_1
    if-eqz v4, :cond_6

    .line 2896
    move/from16 v0, p3

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2897
    if-nez p3, :cond_a

    .line 2898
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v13, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2904
    :cond_6
    :goto_2
    const/4 v13, 0x2

    move/from16 v0, p3

    if-ge v0, v13, :cond_7

    .line 2905
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v14, 0x1

    aput-boolean v14, v13, p3

    .line 2906
    const/4 v13, 0x3

    add-int/lit8 v14, p3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->setSIMSystemProperties(II)V

    .line 2909
    :cond_7
    add-int/lit8 p3, p3, 0x1

    .line 2910
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v13

    move/from16 v0, p3

    if-ge v0, v13, :cond_b

    const/4 v13, 0x2

    move/from16 v0, p3

    if-ge v0, v13, :cond_b

    .line 2912
    const/16 v13, 0xd

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    .line 2931
    .end local v3           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v4           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v5           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v7           #fileindex:I
    :cond_8
    :goto_3
    if-eqz v8, :cond_0

    .line 2932
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v9

    .line 2935
    .restart local v9       #inIAP:Z
    new-instance v13, Lcom/android/internal/telephony/AnrRecordLoader;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v14, 0xd

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v14, v1, v2, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v6, v9, v14}, Lcom/android/internal/telephony/AnrRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2892
    .end local v9           #inIAP:Z
    .restart local v3       #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v5       #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .restart local v7       #fileindex:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .restart local v4       #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto :goto_1

    .line 2900
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v13, v0, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2915
    :cond_b
    add-int/lit8 p2, p2, 0x1

    .line 2916
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v13

    move/from16 v0, p2

    if-ge v0, v13, :cond_c

    .line 2917
    const/16 v13, 0xd

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v13, v1, v14}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->handleNextSequence(III)V

    goto :goto_3

    .line 2921
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->notifySimPbkWaiter()V

    goto :goto_3

    .line 2925
    .end local v4           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v5           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_d
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "fileindex:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mAnrRecordLists.size():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "or index: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " > "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "mAnrRecordLists.get(fileindex).size():"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2804
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 2
    .parameter "efid"

    .prologue
    .line 3071
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 3072
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3073
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isSIMPhonebookFileId(I)Z

    move-result v0

    .line 3076
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLoadAllPBEntry(Landroid/os/Message;)V
    .locals 9
    .parameter "response"

    .prologue
    const/16 v8, 0x6f4a

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1444
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    if-nez v3, :cond_2

    .line 1445
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->getPbkEntryListIfLoaded()Ljava/util/ArrayList;

    move-result-object v2

    .line 1449
    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v2, :cond_2

    .line 1450
    if-eqz p1, :cond_0

    .line 1451
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v3

    iput-object v2, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1452
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1454
    :cond_0
    const-string v3, "PB has already loaded"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1496
    .end local v2           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    :cond_1
    :goto_0
    return-void

    .line 1458
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1460
    const-string v3, "HtcIccPbkEntryCache_QMI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestLoadAllPBEntry()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v6, :cond_1

    .line 1476
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1477
    .local v0, card:Lcom/android/internal/telephony/IccCard;
    if-eqz v0, :cond_4

    sget-object v3, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1478
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v3, :cond_3

    .line 1479
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->loadEfPBRFromUsim(Landroid/os/Message;)V

    .line 1495
    :cond_3
    :goto_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->misloading:Z

    goto :goto_0

    .line 1482
    :cond_4
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->m2GPhonebook:Z

    .line 1483
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v3, :cond_5

    .line 1484
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v7}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->setPbrPresent(Z)V

    .line 1487
    :cond_5
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1488
    .local v1, queryTimeStamp:Landroid/os/Bundle;
    const-string v3, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1489
    new-instance v3, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    const/16 v4, 0x8

    invoke-virtual {p0, v4, v7, v8, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v8, v4}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_1
.end method

.method public setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter "iccFileHandler"

    .prologue
    .line 3087
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 3088
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 3089
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V

    .line 3092
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    if-nez v0, :cond_1

    .line 3093
    const-string v0, "setupIccFileHandler: set mIccFileHandler to null"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 3096
    :cond_1
    return-void
.end method

.method updateADNByIndex(ILcom/android/internal/telephony/HtcAdnRecord;ILandroid/os/Message;)V
    .locals 4
    .parameter "recordIndex"
    .parameter "adnRecord"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2680
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateADNByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2684
    new-instance v0, Lcom/android/internal/telephony/ADNRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/ADNRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/ADNRecordLoader;->updateEF(IILcom/android/internal/telephony/HtcAdnRecord;Landroid/os/Message;)V

    .line 2689
    :cond_0
    return-void
.end method

.method updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V
    .locals 6
    .parameter "recordIndex"
    .parameter "anrRecord"
    .parameter "efid"
    .parameter "anrEntryIndex"
    .parameter "response"

    .prologue
    .line 2654
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAnrByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2655
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    .line 2657
    .local v4, inIAP:Z
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2660
    new-instance v0, Lcom/android/internal/telephony/AnrRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    move v1, p3

    move v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/AnrRecordLoader;->updateEF(IILcom/android/internal/telephony/AnrRecord;ZLandroid/os/Message;)V

    .line 2664
    :cond_0
    return-void
.end method

.method updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "recordIndex"
    .parameter "emailRecord"
    .parameter "response"

    .prologue
    .line 2640
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmailByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    .line 2643
    .local v4, inIAP:Z
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2646
    new-instance v0, Lcom/android/internal/telephony/EmailRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/EmailRecordLoader;->updateEF(IILcom/android/internal/telephony/EmailRecord;ZLandroid/os/Message;)V

    .line 2650
    :cond_0
    return-void
.end method

.method updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V
    .locals 3
    .parameter "recordIndex"
    .parameter "ext1Record"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2693
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExt1ByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2697
    new-instance v0, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->updateEF(IILcom/android/internal/telephony/HtcExt1Record;Landroid/os/Message;)V

    .line 2701
    :cond_0
    return-void
.end method

.method updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V
    .locals 3
    .parameter "recordIndex"
    .parameter "iapRecord"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2668
    const-string v0, "HtcIccPbkEntryCache_QMI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIAPByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2672
    new-instance v0, Lcom/android/internal/telephony/IAPRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/IccFileHandler;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/IAPRecordLoader;->updateEF(IILcom/android/internal/telephony/IAPRecord;Landroid/os/Message;)V

    .line 2676
    :cond_0
    return-void
.end method

.method public updatePBKEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 11
    .parameter "recordNumber"
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "newEmail"
    .parameter "response"

    .prologue
    .line 1745
    const-string v1, "updatePBKEntry()"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sLog(Ljava/lang/String;)V

    .line 1747
    const/4 v7, 0x0

    .line 1750
    .local v7, error:I
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v1, :cond_0

    .line 1751
    const-string v1, "mPhone null"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1854
    :goto_0
    return-void

    .line 1755
    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1759
    .local v10, phonenumber:Ljava/lang/String;
    move-object/from16 v0, p5

    invoke-direct {p0, v10, p4, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 1761
    if-eqz v7, :cond_1

    .line 1762
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1767
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v9

    .line 1770
    .local v9, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    array-length v1, v1

    if-ge v8, v1, :cond_2

    .line 1771
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mIap_Updatedata:[B

    const/4 v2, 0x0

    aput-byte v2, v1, v8

    .line 1770
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1775
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v1, v2, :cond_3

    sget-boolean v1, Lcom/android/internal/telephony/HtcBuildUtils;->VERIZON_WPHONE_CONFIG:Z

    if-nez v1, :cond_3

    .line 1777
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1781
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v1, :cond_d

    .line 1782
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1784
    .local v6, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v6, :cond_4

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    if-gtz v1, :cond_5

    .line 1785
    :cond_4
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1787
    :cond_5
    iget v1, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mRecordNums:I

    div-int v5, v1, v2

    .line 1788
    .local v5, num:I
    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 1789
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v7

    .line 1790
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mANR_swap:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 1791
    move-object/from16 p5, p4

    .line 1792
    const-string p4, ""

    .line 1795
    :cond_6
    if-eqz v7, :cond_7

    .line 1796
    packed-switch v7, :pswitch_data_0

    .line 1807
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1804
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MemoryFull:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1813
    :cond_7
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 1814
    move-object/from16 v0, p6

    invoke-direct {p0, v0, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1820
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 1821
    const/4 v1, 0x0

    invoke-direct {p0, p4, v6, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1824
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 1825
    const/4 v1, 0x1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v6, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1831
    :cond_a
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1832
    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportEmail:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->mSupportAnr:[Z

    const/4 v2, 0x1

    aget-boolean v1, v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    .line 1835
    :cond_b
    iget v1, v6, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateIAP(IZ)V

    .line 1842
    :cond_c
    move-object/from16 v0, p7

    invoke-direct {p0, p2, v10, v6, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updateADNRecord(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1845
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->updatePSCRecord(ZII)V

    goto/16 :goto_0

    .line 1850
    .end local v5           #num:I
    .end local v6           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_d
    const-string v1, "HtcIccPbkEntryCache_QMI"

    const-string v2, "mSimPbkEntryList = null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    const-string v1, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache_QMI;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1796
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
