Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C208407CF6
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:11:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785409866; cv=none; b=Pargn2nuSMVAxAK7s10xx92zczKJkl6qfJwn2L2W8cr6BmAPlTjqgPRb8Bo2C+5Gp9KYLui8PKu3K5q/uquGVHlZGCuC3yD7kojViIl6cDoMJY7hjCCktS1NoY5SK+Btku1kcpg9y8HbWq4ODTW3yDWhH42Y5Iiysb6Hp0G/D4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785409866; c=relaxed/simple;
	bh=MaoHlFgAUuYSXA7uT8Ui/laMUCSVLJogpd7UwBQRf2s=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=f2ZS6R579QclIBKQ2jm17dRv0BcdHhagrpllVV4Y70hZEFc+fy3j0baGhJzeZWVU3KP4/sVRdlri+k7P6np558tQmePnRp11aXcoASeaHsxHuE3L5C/Eg5Yvr+9FhsX8Ze5nK7lGcIeRv08f8oYyas0QtMNO/+NtTi45OzSJQqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785409866;
	bh=MaoHlFgAUuYSXA7uT8Ui/laMUCSVLJogpd7UwBQRf2s=;
	h=Subject:From:To:Date:From;
	b=CAkxIEd0GQiLBsk9AOajTGYbotbs8+AeI5wjT38gFVYj0Owo39MomZ5CuQ2FfUoeZ
	 +EBW8VZc+hwr1/WzLOdTXB1LYFFmZ9qdaJUqcSeeDCAPIRykQfEW0cx9USTdD/AJer
	 hoTPIRL8hG2LnFKOVRTuG24vGucivic5ir+Whkro=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5AB281F000E9
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:11:03 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3EAB0381197C
	for <linux-kernel-announce@vger.kernel.org>; Thu, 30 Jul 2026 11:10:28 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.213 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 30 Jul 2026 11:10:26 +0000
Message-Id: <20260730111026.release-5.15.213@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.213
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.213.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.213.xz

Linux kernel version 5.15.213 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.213.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.213.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.213.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.213/v5.15.212

