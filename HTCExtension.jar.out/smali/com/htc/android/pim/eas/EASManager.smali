.class public Lcom/htc/android/pim/eas/EASManager;
.super Ljava/lang/Object;
.source "EASManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/android/pim/eas/EASManager$CertificateError;
    }
.end annotation


# static fields
.field public static final ACNT_CONFIGURED:I = 0x1

.field public static final ACNT_NOT_CONFIGURED:I = 0x0

.field public static final EMAIL_PROVIDER_NAME:Ljava/lang/String; = "Exchange"

.field public static final EVENT_ATTENDEES:Ljava/lang/String; = "EVENT_ATTENDEES"

.field public static final EVENT_CREATED_TIME:Ljava/lang/String; = "EVENT_CREATED_TIME"

.field public static final EVENT_DESCRIPTION:Ljava/lang/String; = "EVENT_DESCRIPTION"

.field public static final EVENT_DESCRIPTION_MIME_TYPE:Ljava/lang/String; = "EVENT_DESCRIPTION_MIME_TYPE"

.field public static final EVENT_END_TIME:Ljava/lang/String; = "EVENT_END_TIME"

.field public static final EVENT_GLOBAL_OBJ_ID:Ljava/lang/String; = "EVENT_GLOBAL_OBJ_ID"

.field public static final EVENT_IS_ALL_DAY:Ljava/lang/String; = "EVENT_IS_ALL_DAY"

.field public static final EVENT_IS_EXCEPTION:Ljava/lang/String; = "EVENT_IS_EXCEPTION"

.field public static final EVENT_LAST_MODIFIED:Ljava/lang/String; = "EVENT_LAST_MODIFIED"

.field public static final EVENT_LOCATION:Ljava/lang/String; = "EVENT_LOCATION"

.field public static final EVENT_ORGANIZER:Ljava/lang/String; = "EVENT_ORGANIZER"

.field public static final EVENT_ORIGINAL_INSTANCE_TIME:Ljava/lang/String; = "EVENT_ORIGINAL_TIME"

.field public static final EVENT_REMINDER:Ljava/lang/String; = "EVENT_REMINDER"

.field public static final EVENT_RRULE:Ljava/lang/String; = "EVENT_RRULE"

.field public static final EVENT_START_TIME:Ljava/lang/String; = "EVENT_START_TIME"

.field public static final EVENT_SUBJECT:Ljava/lang/String; = "EVENT_SUBJECT"

.field public static final EVENT_SUMMARY:Ljava/lang/String; = "EVENT_SUMMARY"

.field public static final EVENT_TIMEZONE:Ljava/lang/String; = "EVENT_TIMEZONE"

.field public static final EVENT_dtSTAMP_TIME:Ljava/lang/String; = "EVENT_DTSTAMP_TIME"

.field public static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "extra.eas.account_name"

.field public static final EXTRA_CALENDAR_EVENT_ID:Ljava/lang/String; = "com.htc.eas.extra.calendar.event_id"

.field public static final EXTRA_DELAY_TIME:Ljava/lang/String; = "com.htc.eas.extra.delayTime"

.field public static final EXTRA_FROM_MAIL:Ljava/lang/String; = "extra.eas.from.mail"

.field public static final EXTRA_MAIL_SEND_ERRORCODE:Ljava/lang/String; = "extra.eas.mail.sendmailErrorcode"

.field public static final EXTRA_SENDMAIL_ACCOUNT_FAIL:I = 0x1

.field public static final EXTRA_SENDMAIL_OTHER_FAIL:I = 0x2

.field public static final EXTRA_SYNC_STATUS_UPD_MAIL:I = 0xe

.field public static final EXTRA_TAG:Ljava/lang/String; = "com.htc.eas.extra.tag"

.field public static final INTENT_ALL_SYNC_FINISH:Ljava/lang/String; = "com.htc.eas.intent.all_sync_finish"

.field public static final INTENT_ALL_SYNC_START:Ljava/lang/String; = "com.htc.eas.intent.all_sync_start"

.field public static final INTENT_DELETE_EXCHG_ACCOUNT:Ljava/lang/String; = "com.htc.mail.eas.intent.delete_exchg_account"

.field public static final INTENT_DELETE_MAIL_FINISH:Ljava/lang/String; = "com.htc.eas.intent.delete_mail_finish"

.field public static final INTENT_FROM_WHERE:Ljava/lang/String; = "intent.eas.from_where"

.field public static final INTENT_MEETING_INVITATION:Ljava/lang/String; = "intent.eas.meeting_invitation"

.field public static final INTENT_MODE_WIZARD:Ljava/lang/String; = "intent.eas.mode.wizard"

.field public static final INTENT_PAUSE_SYNC:Ljava/lang/String; = "com.htc.eas.intent.pauseSync"

.field public static final INTENT_RESUME_SYNC:Ljava/lang/String; = "com.htc.eas.intent.resumeSync"

.field public static final INTENT_SYNC_CALENDAR:Ljava/lang/String; = "com.htc.android.eas.syncCalendar"

.field public static final INTENT_SYNC_CONTACTS:Ljava/lang/String; = "com.htc.android.eas.syncContacts"

.field public static final MAIL_MEETING_FORWARD:Ljava/lang/String; = "IPM.Schedule.Meeting.MeetingRespForward"

.field public static final MAIL_MEETING_PROPOSE_NEW_TIME:Ljava/lang/String; = "IPM.Schedule.Meeting.proposeNewTime"

.field public static final MAIL_MESSAGE_CLASS_ACCEPT:Ljava/lang/String; = "IPM.Schedule.Meeting.Resp.Pos"

.field public static final MAIL_MESSAGE_CLASS_DECLINE:Ljava/lang/String; = "IPM.Schedule.Meeting.Resp.Neg"

.field public static final MAIL_MESSAGE_CLASS_REQUEST:Ljava/lang/String; = "IPM.Schedule.Meeting.Request"

.field public static final MAIL_MESSAGE_CLASS_TENTATIVE:Ljava/lang/String; = "IPM.Schedule.Meeting.Resp.Tent"

.field public static final MEETING_CMD:Ljava/lang/String; = "MEETING_COMMAND"

.field public static final MEETING_CMD_ACCEPT:I = 0x1

.field public static final MEETING_CMD_CANCEL_INVITE:I = 0x7

.field public static final MEETING_CMD_DECLINE:I = 0x3

.field public static final MEETING_CMD_FORWARD_MEETING:I = 0x4

.field public static final MEETING_CMD_INVITATION:I = 0x6

.field public static final MEETING_CMD_PROPOSE_NEW_TIME:I = 0x5

.field public static final MEETING_CMD_TENTATICE:I = 0x2

.field public static final MEETING_CMD_UNKNOWN:I = 0x0

.field public static final MEETING_RESP_ACCEPTED:Ljava/lang/String; = "1"

.field public static final MEETING_RESP_DECLINED:Ljava/lang/String; = "3"

.field public static final MEETING_RESP_FORWARD:Ljava/lang/String; = "4"

.field public static final MEETING_RESP_PROPOSE_NEW_TIME:Ljava/lang/String; = "5"

.field public static final MEETING_RESP_TENTATIVE_ACCEPTED:Ljava/lang/String; = "2"

.field public static final PROTOCOL_UNKNOWN:Ljava/lang/String; = "Unknown"

.field public static final SYNCSRC_CALENDAR:I = 0x2

.field public static final SYNCSRC_CONTACTS:I = 0x1

.field public static final SYNCSRC_EMAIL:I = 0x3

.field public static final SYNCSRC_TASK:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method
