Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9DCC3597A
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 14:51:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760885460; cv=none; b=H36T6PeKIMYGySWFbJET/mnBilxk1YoiH5K8t4fKsW8kgLSuxaDHIvssKG5/IIv7eS2EdFORXpBfGSl7zWnExN9KOBdttog9gKW7SJQkMvVpjRXVLaEBJcMPUi/c9JGtj4SlVYKga7OLaQJ8ifWdjG1WxRXTGXekMlgB5adGdfs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760885460; c=relaxed/simple;
	bh=PvcAWrd1yKMAslLDOWaZWCGyJA+onijBa5ZRldGigd8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=E6tJ8ofmRVWM5NhIH7CaE0FFTbnL5wjNimWJmwwFJhmWE7zqeAf46yudV3yCHHhdaNwa1+P8R370e8ugjh/miRBfRmd8AvtjE0vmagsTwQgxfZXV2bnUJhuqsK844MFEmSPEEQKZVwDQUwqaRdk1Wqqz5t2dWq9eqsunhnJ59Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1760885460;
	bh=PvcAWrd1yKMAslLDOWaZWCGyJA+onijBa5ZRldGigd8=;
	h=Subject:From:To:Date:From;
	b=L1tI+W/9PUDBYFzdqYS5oPdCmVvvB03vmEvNJNK1pAGHc5AyoiUfsDiFjKUu8fZJt
	 362bRudL/lm36DhO9sKFapzGTv3vMilBHTduWUb4x/bHHTAopnkWkhHCpWj5HgaI3q
	 hIC4AlJ8ub+tE/rx+GktPvrblXg/NwvNcskxnoNQ=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 551E7C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 14:51:00 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 3448539FEB71
	for <linux-kernel-announce@vger.kernel.org>; Sun, 19 Oct 2025 14:50:44 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.113 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 19 Oct 2025 14:50:42 +0000
Message-Id: <20251019145042.release-6.6.113@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.113
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.113.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.113.xz

Linux kernel version 6.6.113 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.113.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.113.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.113.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.113/v6.6.112

