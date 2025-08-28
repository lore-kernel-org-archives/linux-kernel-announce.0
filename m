Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A347521B9F1
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756392634; cv=none; b=PcSwMxVZwOCnh0Tplw0Jhouq0AfMPSb78kRXgJ7FTZqdgKhEcIgzNnWw2cls84ebrbqZ4mGaUlyX7RvBwiSms62OkRCCqlj1Zdgx3H0oIlOSl2dBDeERqXZ1mJ2FOCz8lEYUxqnE22aFvBaeHrg14MntFDdWe8ZpRl8/Xotv5Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756392634; c=relaxed/simple;
	bh=g8aj78DSO/14Pr+m3uJzvvqJl8f5ax6bcrB9S+Lp5Eo=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=mBYUCaS84u+22U66AESt9mLkTLUwajooaTVPbKp2jAGzExmmAUpHi02cjkGo8qIKSGdNfw3bmsLpGHZZfMp1e0JsOXt0MMTMNPIc5j2O+zg2MgjEsOVXavi5Y6p6+Dnu0jAUvmIuMYmW4etwDX2ZQROblMWwT9tbwBvVV6LNxeE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1756392634;
	bh=g8aj78DSO/14Pr+m3uJzvvqJl8f5ax6bcrB9S+Lp5Eo=;
	h=Subject:From:To:Date:From;
	b=UA3gFRlVqAr2kWH7cPJzla2bEmVudTQM6wPPvziPSt+MU5yzaBgCjXle9USOwD6i3
	 HhDzVjVFKdpzPs3OUpHxoqh5Z1NhXoNoCCz+vweLBbGr4f6Ur61T5ce2yBpIEznopR
	 YCdG8+WRiDolPwwbFCydheuHakVGPJIWNh+1hqEE=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 44185C4CEED
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:50:34 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 749F8383BF65
	for <linux-kernel-announce@vger.kernel.org>; Thu, 28 Aug 2025 14:50:42 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.149 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 28 Aug 2025 14:50:41 +0000
Message-Id: <20250828145041.release-6.1.149@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.149
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.149.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.149.xz

Linux kernel version 6.1.149 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.149.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.149.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.149.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.149/v6.1.148

