.class public Lcom/htc/util/contacts/SNLinkUtils$NewMethod;
.super Ljava/lang/Object;
.source "SNLinkUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/contacts/SNLinkUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewMethod"
.end annotation


# static fields
.field public static final FACEBOOK_ENDING_TOKEN:Ljava/lang/String; = "</Facebook>"

.field public static final FACEBOOK_STARTING_TOKEN:Ljava/lang/String; = "<Facebook>"

.field public static final FLICKR_ENDING_TOKEN:Ljava/lang/String; = "</Flickr>"

.field public static final FLICKR_STARTING_TOKEN:Ljava/lang/String; = "<Flickr>"

.field public static final HTC_DATA_ENDING_TOKEN:Ljava/lang/String; = "</HTCData>"

.field public static final HTC_DATA_STARTING_TOKEN:Ljava/lang/String; = "<HTCData>"

.field public static final KAIXIN_ENDING_TOKEN:Ljava/lang/String; = "</Kaixin>"

.field public static final KAIXIN_STARTING_TOKEN:Ljava/lang/String; = "<Kaixin>"

.field public static final PLURK_ENDING_TOKEN:Ljava/lang/String; = "</Plurk>"

.field public static final PLURK_STARTING_TOKEN:Ljava/lang/String; = "<Plurk>"

.field public static final QQIM_ENDING_TOKEN:Ljava/lang/String; = "</QQIM>"

.field public static final QQIM_STARTING_TOKEN:Ljava/lang/String; = "<QQIM>"

.field public static final QQWEIBO_ENDING_TOKEN:Ljava/lang/String; = "</QQWeibo>"

.field public static final QQWEIBO_STARTING_TOKEN:Ljava/lang/String; = "<QQWeibo>"

.field public static final QZONE_ENDING_TOKEN:Ljava/lang/String; = "</QZOne>"

.field public static final QZONE_STARTING_TOKEN:Ljava/lang/String; = "<QZOne>"

.field public static final RENREN_ENDING_TOKEN:Ljava/lang/String; = "</Renren>"

.field public static final RENREN_STARTING_TOKEN:Ljava/lang/String; = "<Renren>"

.field public static final SINA_ENDING_TOKEN:Ljava/lang/String; = "</Sina>"

.field public static final SINA_STARTING_TOKEN:Ljava/lang/String; = "<Sina>"

.field public static final TWITTER_ENDING_TOKEN:Ljava/lang/String; = "</Twitter>"

.field public static final TWITTER_STARTING_TOKEN:Ljava/lang/String; = "<Twitter>"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 588
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendLinkData(Ljava/lang/String;Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;)Ljava/lang/String;
    .locals 11
    .parameter "text"
    .parameter "data"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 886
    if-nez p1, :cond_1

    .line 956
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 889
    .restart local p0
    :cond_1
    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 893
    new-instance v7, Ljava/lang/StringBuilder;

    if-nez p0, :cond_3

    const-string v8, ""

    :goto_1
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 894
    .local v7, textBuffer:Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 895
    .local v0, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    #calls: Lcom/htc/util/contacts/SNLinkUtils;->refineData(Ljava/util/List;)Z
    invoke-static {v0}, Lcom/htc/util/contacts/SNLinkUtils;->access$100(Ljava/util/List;)Z

    move-result v6

    .line 896
    .local v6, needRewriteNote:Z
    if-nez v0, :cond_4

    .line 898
    const-string v8, "<HTCData>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 899
    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    const-string v8, "id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 903
    const-string v8, "friendof:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 904
    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    iget-object v8, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    invoke-static {p0}, Lcom/htc/util/contacts/DefaultActionUtils;->extractDefaultActionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 909
    .local v3, defaultAction:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 910
    invoke-static {v9, v7, v3}, Lcom/htc/util/contacts/DefaultActionUtils;->appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 913
    :cond_2
    const-string v8, "</HTCData>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .end local v0           #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    .end local v3           #defaultAction:Ljava/lang/String;
    .end local v6           #needRewriteNote:Z
    .end local v7           #textBuffer:Ljava/lang/StringBuilder;
    :cond_3
    move-object v8, p0

    .line 893
    goto :goto_1

    .line 916
    .restart local v0       #dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    .restart local v6       #needRewriteNote:Z
    .restart local v7       #textBuffer:Ljava/lang/StringBuilder;
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 917
    .local v1, dataListSize:I
    const/16 v8, 0x14

    if-le v1, v8, :cond_6

    .line 918
    invoke-static {}, Lcom/htc/util/contacts/SNLinkUtils;->access$000()Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "SNLinkUtils"

    const-string v9, "link infomation exceed the limit so that don\'t add it."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_5
    if-eqz v6, :cond_0

    .line 921
    invoke-static {p0, v0, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 927
    :cond_6
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    if-ge v5, v1, :cond_9

    .line 928
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 929
    .local v2, dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v8, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    iget-object v9, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    iget-object v9, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-object v8, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    iget-object v9, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    #calls: Lcom/htc/util/contacts/SNLinkUtils;->isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/htc/util/contacts/SNLinkUtils;->access$200(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 931
    invoke-static {}, Lcom/htc/util/contacts/SNLinkUtils;->access$000()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "SNLinkUtils"

    const-string v9, "link duplicate one."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_7
    if-eqz v6, :cond_0

    .line 935
    invoke-static {p0, v0, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 927
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 943
    .end local v2           #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_9
    const/4 v4, 0x0

    .line 944
    .local v4, hasSameType:Z
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v1, :cond_a

    .line 945
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 946
    .restart local v2       #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v8, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    iget-object v9, p1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    #calls: Lcom/htc/util/contacts/SNLinkUtils;->isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v8, v9}, Lcom/htc/util/contacts/SNLinkUtils;->access$200(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 947
    invoke-interface {v0, v5, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 948
    const/4 v4, 0x1

    .line 952
    .end local v2           #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_a
    if-nez v4, :cond_b

    .line 953
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_b
    invoke-static {p0, v0, v10}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 944
    .restart local v2       #dataTmp:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method public static appendLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 967
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 974
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 970
    .restart local p0
    :cond_1
    new-instance v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v0}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 971
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iput-object p1, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 972
    iput-object p2, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 973
    iput-object p3, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 974
    invoke-static {p0, v0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendLinkData(Ljava/lang/String;Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "SNType"
    .parameter "isStart"

    .prologue
    .line 1071
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1072
    const-string v0, ""

    .line 1120
    :goto_0
    return-object v0

    .line 1074
    :cond_0
    if-eqz p1, :cond_b

    .line 1075
    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.facebook.auth.login"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1076
    :cond_1
    const-string v0, "<Facebook>"

    goto :goto_0

    .line 1077
    :cond_2
    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1078
    const-string v0, "<Flickr>"

    goto :goto_0

    .line 1079
    :cond_3
    const-string v0, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1080
    const-string v0, "<Plurk>"

    goto :goto_0

    .line 1081
    :cond_4
    const-string v0, "com.twitter.android.auth.login"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1082
    const-string v0, "<Twitter>"

    goto :goto_0

    .line 1083
    :cond_5
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1084
    const-string v0, "<Sina>"

    goto :goto_0

    .line 1085
    :cond_6
    const-string v0, "com.htc.socialnetwork.qqim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1086
    const-string v0, "<QQIM>"

    goto :goto_0

    .line 1087
    :cond_7
    const-string v0, "com.htc.socialnetwork.qqweibo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1088
    const-string v0, "<QQWeibo>"

    goto :goto_0

    .line 1089
    :cond_8
    const-string v0, "com.htc.socialnetwork.chinasns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1090
    const-string v0, "<QZOne>"

    goto :goto_0

    .line 1091
    :cond_9
    const-string v0, "com.htc.KaixinFriendStream"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1092
    const-string v0, "<Kaixin>"

    goto :goto_0

    .line 1093
    :cond_a
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1094
    const-string v0, "<Renren>"

    goto :goto_0

    .line 1097
    :cond_b
    const-string v0, "com.htc.socialnetwork.facebook"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string v0, "com.facebook.auth.login"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1098
    :cond_c
    const-string v0, "</Facebook>"

    goto/16 :goto_0

    .line 1099
    :cond_d
    const-string v0, "com.htc.socialnetwork.flickr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1100
    const-string v0, "</Flickr>"

    goto/16 :goto_0

    .line 1101
    :cond_e
    const-string v0, "com.htc.socialnetwork.plurk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1102
    const-string v0, "</Plurk>"

    goto/16 :goto_0

    .line 1103
    :cond_f
    const-string v0, "com.twitter.android.auth.login"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1104
    const-string v0, "</Twitter>"

    goto/16 :goto_0

    .line 1105
    :cond_10
    const-string v0, "com.htc.friendstream.sinaweiboplugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1106
    const-string v0, "</Sina>"

    goto/16 :goto_0

    .line 1107
    :cond_11
    const-string v0, "com.htc.socialnetwork.qqim"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1108
    const-string v0, "</QQIM>"

    goto/16 :goto_0

    .line 1109
    :cond_12
    const-string v0, "com.htc.socialnetwork.qqweibo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1110
    const-string v0, "</QQWeibo>"

    goto/16 :goto_0

    .line 1111
    :cond_13
    const-string v0, "com.htc.socialnetwork.chinasns"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1112
    const-string v0, "</QZOne>"

    goto/16 :goto_0

    .line 1113
    :cond_14
    const-string v0, "com.htc.KaixinFriendStream"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1114
    const-string v0, "</Kaixin>"

    goto/16 :goto_0

    .line 1115
    :cond_15
    const-string v0, "com.htc.friendstream.renrenwebplugin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1116
    const-string v0, "</Renren>"

    goto/16 :goto_0

    .line 1120
    :cond_16
    const-string v0, ""

    goto/16 :goto_0
.end method

.method public static extractLinkData(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 735
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v5

    .line 815
    :cond_0
    :goto_0
    return-object v0

    .line 738
    :cond_1
    const-string v6, "<HTCData>"

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 739
    .local v3, startingIndex:I
    const-string v6, "</HTCData>"

    invoke-virtual {p0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 740
    .local v2, endingIndex:I
    if-lt v2, v3, :cond_2

    if-eq v3, v7, :cond_2

    if-ne v2, v7, :cond_3

    :cond_2
    move-object v0, v5

    .line 741
    goto :goto_0

    .line 743
    :cond_3
    const-string v6, "<HTCData>"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 745
    .local v4, subText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v0, v5

    .line 746
    goto :goto_0

    .line 749
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 750
    .local v0, allDataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/4 v1, 0x0

    .line 753
    .local v1, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const-string v6, "<Facebook>"

    const-string v7, "</Facebook>"

    const-string v8, "com.facebook.auth.login"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 754
    if-eqz v1, :cond_5

    .line 755
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 759
    :cond_5
    const-string v6, "<Flickr>"

    const-string v7, "</Flickr>"

    const-string v8, "com.htc.socialnetwork.flickr"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 760
    if-eqz v1, :cond_6

    .line 761
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 765
    :cond_6
    const-string v6, "<Plurk>"

    const-string v7, "</Plurk>"

    const-string v8, "com.htc.socialnetwork.plurk"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 766
    if-eqz v1, :cond_7

    .line 767
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 771
    :cond_7
    const-string v6, "<Twitter>"

    const-string v7, "</Twitter>"

    const-string v8, "com.twitter.android.auth.login"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 772
    if-eqz v1, :cond_8

    .line 773
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 777
    :cond_8
    const-string v6, "<Sina>"

    const-string v7, "</Sina>"

    const-string v8, "com.htc.friendstream.sinaweiboplugin"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 778
    if-eqz v1, :cond_9

    .line 779
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 783
    :cond_9
    const-string v6, "<QQIM>"

    const-string v7, "</QQIM>"

    const-string v8, "com.htc.socialnetwork.qqim"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 784
    if-eqz v1, :cond_a

    .line 785
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 789
    :cond_a
    const-string v6, "<QQWeibo>"

    const-string v7, "</QQWeibo>"

    const-string v8, "com.htc.socialnetwork.qqweibo"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 790
    if-eqz v1, :cond_b

    .line 791
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 795
    :cond_b
    const-string v6, "<QZOne>"

    const-string v7, "</QZOne>"

    const-string v8, "com.htc.socialnetwork.chinasns"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 796
    if-eqz v1, :cond_c

    .line 797
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 801
    :cond_c
    const-string v6, "<Kaixin>"

    const-string v7, "</Kaixin>"

    const-string v8, "com.htc.KaixinFriendStream"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 802
    if-eqz v1, :cond_d

    .line 803
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 807
    :cond_d
    const-string v6, "<Renren>"

    const-string v7, "</Renren>"

    const-string v8, "com.htc.friendstream.renrenwebplugin"

    invoke-static {v4, v6, v7, v8}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 808
    if-eqz v1, :cond_e

    .line 809
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 812
    :cond_e
    if-eqz v0, :cond_f

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_0

    :cond_f
    move-object v0, v5

    .line 813
    goto/16 :goto_0
.end method

.method private static extractLinkDataByAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14
    .parameter "subText"
    .parameter "startToken"
    .parameter "endToken"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 822
    const/4 v4, 0x0

    .line 823
    .local v4, idListTokens:Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 825
    .local v2, dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 826
    .local v7, nextContent:Ljava/lang/String;
    :goto_0
    invoke-virtual {v7, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-lez v11, :cond_0

    .line 827
    invoke-virtual {v7, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 828
    .local v9, startingIndex:I
    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 829
    .local v3, endingIndex:I
    if-lt v3, v9, :cond_0

    const/4 v11, -0x1

    if-eq v9, v11, :cond_0

    const/4 v11, -0x1

    if-ne v3, v11, :cond_1

    .line 869
    .end local v3           #endingIndex:I
    .end local v9           #startingIndex:I
    :cond_0
    return-object v2

    .line 832
    .restart local v3       #endingIndex:I
    .restart local v9       #startingIndex:I
    :cond_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 833
    .local v8, size:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v9

    invoke-virtual {v7, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 836
    .local v6, innerText:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    if-ge v11, v8, :cond_4

    .line 837
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v11, v3

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 838
    invoke-static {}, Lcom/htc/util/contacts/SNLinkUtils;->access$000()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "NOTE"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "has next content = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_2
    :goto_1
    new-instance v4, Ljava/util/StringTokenizer;

    .end local v4           #idListTokens:Ljava/util/StringTokenizer;
    const-string v11, "|"

    invoke-direct {v4, v6, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    .restart local v4       #idListTokens:Ljava/util/StringTokenizer;
    if-nez v2, :cond_3

    .line 845
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 848
    .restart local v2       #dataList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 849
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 850
    .local v10, token:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 851
    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 852
    .local v5, ids:[Ljava/lang/String;
    array-length v11, v5

    const/4 v12, 0x2

    if-lt v11, v12, :cond_3

    .line 855
    const/4 v11, 0x0

    aget-object v11, v5, v11

    const-string v12, "id:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    aget-object v11, v5, v11

    const-string v12, "friendof:"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 857
    new-instance v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    invoke-direct {v1}, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;-><init>()V

    .line 858
    .local v1, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    const/4 v11, 0x0

    aget-object v11, v5, v11

    const-string v12, "id:"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    .line 859
    const/4 v11, 0x1

    aget-object v11, v5, v11

    const-string v12, "friendof:"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    .line 860
    move-object/from16 v0, p3

    iput-object v0, v1, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 861
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 840
    .end local v1           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v5           #ids:[Ljava/lang/String;
    .end local v10           #token:Ljava/lang/String;
    :cond_4
    const-string v7, ""

    goto :goto_1

    .line 865
    :cond_5
    const/4 v4, 0x0

    .line 867
    goto/16 :goto_0
.end method

.method public static extractNoteText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "text"

    .prologue
    const/4 v5, -0x1

    .line 716
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 726
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 719
    .restart local p0
    :cond_1
    const-string v4, "<HTCData>"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 720
    .local v1, startingIndex:I
    const-string v4, "</HTCData>"

    invoke-virtual {p0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 721
    .local v0, endingIndex:I
    if-lt v0, v1, :cond_0

    if-eq v1, v5, :cond_0

    if-eq v0, v5, :cond_0

    .line 724
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 725
    .local v2, subTextFirstHalf:Ljava/lang/String;
    const-string v4, "</HTCData>"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 726
    .local v3, subTextSecondHalf:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static removeLinkData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "text"
    .parameter "userId"
    .parameter "friendOf"
    .parameter "type"

    .prologue
    .line 1128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1147
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 1131
    .restart local p0
    :cond_1
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractLinkData(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1132
    .local v1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    #calls: Lcom/htc/util/contacts/SNLinkUtils;->refineData(Ljava/util/List;)Z
    invoke-static {v1}, Lcom/htc/util/contacts/SNLinkUtils;->access$100(Ljava/util/List;)Z

    .line 1133
    if-eqz v1, :cond_0

    .line 1137
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1139
    .local v2, dataListSize:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_2

    .line 1140
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 1142
    .local v0, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    #calls: Lcom/htc/util/contacts/SNLinkUtils;->isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, p3}, Lcom/htc/util/contacts/SNLinkUtils;->access$200(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1143
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1147
    .end local v0           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_2
    const/4 v4, 0x1

    invoke-static {p0, v1, v4}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1139
    .restart local v0       #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static setLinkData(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .locals 14
    .parameter "text"
    .parameter
    .parameter "isNewFormat"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 983
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1067
    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .line 987
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    .line 988
    .local v0, bufferText:Ljava/lang/StringBuffer;
    if-eqz p2, :cond_7

    .line 989
    const-string v12, "<HTCData>"

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 990
    .local v11, startingIndex:I
    const-string v12, "</HTCData>"

    invoke-virtual {p0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 991
    .local v6, endingIndex:I
    if-lt v6, v11, :cond_0

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    const/4 v12, -0x1

    if-eq v6, v12, :cond_0

    .line 995
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #bufferText:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1006
    .restart local v0       #bufferText:Ljava/lang/StringBuffer;
    :goto_1
    const-string v12, "<BlockCall/>"

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_8

    const/4 v7, 0x1

    .line 1007
    .local v7, hasBlockTag:Z
    :goto_2
    invoke-static {p0}, Lcom/htc/util/contacts/DefaultActionUtils;->extractDefaultActionString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1008
    .local v5, defaultAction:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_9

    const/4 v8, 0x1

    .line 1010
    .local v8, hasDefaultAction:Z
    :goto_3
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_3

    :cond_2
    if-nez v7, :cond_3

    if-eqz v8, :cond_f

    .line 1013
    :cond_3
    if-nez p1, :cond_a

    const/4 v3, 0x0

    .line 1014
    .local v3, dataListSize:I
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1018
    .local v4, dataStringBuilder:Ljava/lang/StringBuilder;
    if-eqz v7, :cond_4

    .line 1019
    const-string v12, "<BlockCall/>"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1022
    :cond_4
    const/4 v1, 0x0

    .line 1023
    .local v1, curType:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1024
    .local v10, preType:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_5
    if-ge v9, v3, :cond_b

    .line 1025
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;

    .line 1027
    .local v2, data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    iget-object v1, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->SNType:Ljava/lang/String;

    .line 1028
    #calls: Lcom/htc/util/contacts/SNLinkUtils;->isSNTypeEqual(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v10}, Lcom/htc/util/contacts/SNLinkUtils;->access$200(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1029
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    const/16 v13, 0x7c

    if-ne v12, v13, :cond_5

    .line 1030
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1033
    :cond_5
    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1034
    const/4 v12, 0x1

    invoke-static {v1, v12}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    :cond_6
    const-string v12, "id:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    iget-object v12, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->userId:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1039
    const/16 v12, 0x2f

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1040
    const-string v12, "friendof:"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    iget-object v12, v2, Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;->friendOf:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    const/16 v12, 0x7c

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1044
    move-object v10, v1

    .line 1024
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 997
    .end local v1           #curType:Ljava/lang/String;
    .end local v2           #data:Lcom/htc/util/contacts/SNLinkUtils$SNLinkData;
    .end local v3           #dataListSize:I
    .end local v4           #dataStringBuilder:Ljava/lang/StringBuilder;
    .end local v5           #defaultAction:Ljava/lang/String;
    .end local v6           #endingIndex:I
    .end local v7           #hasBlockTag:Z
    .end local v8           #hasDefaultAction:Z
    .end local v9           #i:I
    .end local v10           #preType:Ljava/lang/String;
    .end local v11           #startingIndex:I
    :cond_7
    const-string v12, "<sn>"

    invoke-virtual {p0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    .line 998
    .restart local v11       #startingIndex:I
    const-string v12, "</sn>"

    invoke-virtual {p0, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 999
    .restart local v6       #endingIndex:I
    if-lt v6, v11, :cond_0

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    const/4 v12, -0x1

    if-eq v6, v12, :cond_0

    .line 1003
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #bufferText:Ljava/lang/StringBuffer;
    invoke-static {p0}, Lcom/htc/util/contacts/SNLinkUtils$OldMethod;->extractNoteText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .restart local v0       #bufferText:Ljava/lang/StringBuffer;
    goto/16 :goto_1

    .line 1006
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1008
    .restart local v5       #defaultAction:Ljava/lang/String;
    .restart local v7       #hasBlockTag:Z
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 1013
    .restart local v8       #hasDefaultAction:Z
    :cond_a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    goto/16 :goto_4

    .line 1047
    .restart local v1       #curType:Ljava/lang/String;
    .restart local v3       #dataListSize:I
    .restart local v4       #dataStringBuilder:Ljava/lang/StringBuilder;
    .restart local v9       #i:I
    .restart local v10       #preType:Ljava/lang/String;
    :cond_b
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_c

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    const/16 v13, 0x7c

    if-ne v12, v13, :cond_c

    .line 1048
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1050
    :cond_c
    const/4 v12, 0x0

    invoke-static {v10, v12}, Lcom/htc/util/contacts/SNLinkUtils$NewMethod;->appendTypeTag(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1053
    if-eqz v8, :cond_d

    .line 1054
    const/4 v12, 0x0

    invoke-static {v12, v4, v5}, Lcom/htc/util/contacts/DefaultActionUtils;->appendDefaultAction(ZLjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1057
    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_e

    .line 1058
    const/4 v12, 0x0

    const-string v13, "<HTCData>"

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 1059
    const-string v12, "</HTCData>"

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    :cond_e
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1067
    .end local v1           #curType:Ljava/lang/String;
    .end local v3           #dataListSize:I
    .end local v4           #dataStringBuilder:Ljava/lang/StringBuilder;
    .end local v9           #i:I
    .end local v10           #preType:Ljava/lang/String;
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0
.end method
