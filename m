Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8271345758
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:35:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771515329; cv=none; b=B46ur4YDXeFLLfhzRP+QWJzttCD8Cm7g0nsmR6OXpVIIgb+ywGxpAAHLwuaRbC5/zxEfCxZXmiTTCa5UgZP8S5VNzQ0MULMk7dW5GU/MGq8baDE1W9cjvNGWMx4uNuINL80lJkCBOlPPAYEvTaF6MxKWLjaAenhCMF2C/r39bLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771515329; c=relaxed/simple;
	bh=xFWjp1C1kKP/MebnPk2Hm52zjXsMBqQqSVoXWJU4Gu0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=iD/Rs+9FAwmkgLpUUgr0eVS3/V/aZlMsl0vrWvfktNnZVSRencxETIKnPIQMuYJzV1AdEBy87I3HxFhGoNpVHKSFuazei9N1NA6bkwTdwlvcCRYcVRpzh+d/jSPRTQqQFPeQ/rO3BBn9UpdQ9LyGnR4wyLlT2G8Y4q5E/M1FS6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1771515329;
	bh=xFWjp1C1kKP/MebnPk2Hm52zjXsMBqQqSVoXWJU4Gu0=;
	h=Subject:From:To:Date:From;
	b=Bual+eOH1wnZ4lpbA5nVVDMITG8U4ZIlVzxrZprttU3YEs/j8hzFFAUpclhcCYjyo
	 UP5qbtPxY+da2kzCHUsI+uskmerhL+4VE/aRKzvPeW2qo1rJNaDPvgJ+0XV7r/AiNN
	 sRg7t5umrhRsWVBUIF2RJ9rCfB1CIqUeEYeaf+Rg=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F9D0C4CEF7
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:35:29 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id C458D380CEF3
	for <linux-kernel-announce@vger.kernel.org>; Thu, 19 Feb 2026 15:35:21 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.201 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 19 Feb 2026 15:35:20 +0000
Message-Id: <20260219153520.release-5.15.201@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.201
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.201.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.201.xz

Linux kernel version 5.15.201 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.201.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.201.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.201.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.201/v5.15.200

