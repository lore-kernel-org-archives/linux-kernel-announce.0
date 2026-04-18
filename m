Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA3C25783C
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 09:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776503453; cv=none; b=bQGxB+tYPl0xjyHfG+f1gEdArifJD2rqPomv5Ww9DpOIXDLGnPDaA2zGbC7wu5eaA/X9Tx/nU1KIF8bdDJXP1HquL4MC0AbBLFg0Uii75LjSNhGq+OO1PwljrdcjpX+JQOXaBYTg5c9qMbnnlqVXZv30RNb59ADO6UfL4Q+zpCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776503453; c=relaxed/simple;
	bh=+fEMMcl7e9MY/ch/dML9LCejGBSB+TxIDLuTjzlYppc=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=FVttQrW2XlanEH4wslIwu/ifE0X2v+zHpkxeKKv0tcCAV1HM4JmodkUcGkbPOVOkZ7PwrfnfZx452YvwRXu1RkbgAbopCS0R4K3eLbBh/Ie7/QweXTJBvpXMAZfx4kdWP+mOidCKWafwru+Fq6DxfvnEPyBe1XfcB2xp1q9eNn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1776503453;
	bh=+fEMMcl7e9MY/ch/dML9LCejGBSB+TxIDLuTjzlYppc=;
	h=Subject:From:To:Date:From;
	b=N337SvQDzGZGIqBx7r0lg6PCwS717QdHW6JXuIPykc95Fso4In64SOsRCDP+HsCV+
	 jrUGfBSnmWK4I5QvcypjHN9B968rmDmGQHlZT1Gus5afdRdcAE4jRes1BnsTtDvsi7
	 pWudHkZvN6Xf+JQQdf03Y50QxDtUpobMRb9ZTN8I=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C47F5C19424
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 09:10:52 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id BC8D1380CEDD
	for <linux-kernel-announce@vger.kernel.org>; Sat, 18 Apr 2026 09:10:20 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.19.13 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 18 Apr 2026 09:10:19 +0000
Message-Id: <20260418091019.release-6.19.13@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.19.13
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.13.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.13.xz

Linux kernel version 6.19.13 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.13.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.19.13.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.19.13.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.19.13/v6.19.12

