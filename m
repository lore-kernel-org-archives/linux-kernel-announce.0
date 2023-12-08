Return-Path: <linux-kernel-announce-owner@vger.kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD866C4167B
	for <linux-kernel-announce@archiver.kernel.org>; Fri,  8 Dec 2023 08:20:45 +0000 (UTC)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235752AbjLHIUf (ORCPT
        <rfc822;linux-kernel-announce@archiver.kernel.org>);
        Fri, 8 Dec 2023 03:20:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232968AbjLHIUc (ORCPT
        <rfc822;linux-kernel-announce@vger.kernel.org>);
        Fri, 8 Dec 2023 03:20:32 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20870B5
        for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Dec 2023 00:20:39 -0800 (PST)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E1AC433C7
        for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Dec 2023 08:20:38 +0000 (UTC)
Received: from aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (localhost.localdomain [127.0.0.1])
        by aws-us-west-2-korg-oddjob-1.ci.codeaurora.org (Postfix) with ESMTP id 9DFBCC04DD9
        for <linux-kernel-announce@vger.kernel.org>; Fri,  8 Dec 2023 08:20:38 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.5 released
From:   Linux Kernel Distribution System <kdist@linux.kernel.org>
To:     linux-kernel-announce@vger.kernel.org
Date:   Fri, 08 Dec 2023 08:20:38 +0000
Message-Id: <20231208082038.release-6.6.5@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.5
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.5.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.5.xz
Precedence: bulk
List-ID: <linux-kernel-announce.vger.kernel.org>
X-Mailing-List: linux-kernel-announce@vger.kernel.org

Linux kernel version 6.6.5 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.5.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.5.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.5.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.5/v6.6.4

