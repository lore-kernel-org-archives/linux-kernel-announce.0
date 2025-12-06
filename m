Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08E17254B03
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765056219; cv=none; b=NafOJ92ofpMg1MuGYtkLHPNCNVp0RKukji2qgY0Ev+L5/WExTIldqwxOYKYwTYAa2JsProRg98khaTM5TwdXKA0n/wjcKl7taCFeDZLqHgOI034tEwx7Ysmw04Jq/GCAp0+HGmEhkcpiMzt7AY8njEKG8xja97C3kXjjpoTu064=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765056219; c=relaxed/simple;
	bh=h6Mvj1tjJt5Aecn/JqiAH08BkaQkrNGrJ8dYOtew9IA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=JCT+6fmHyztveRnBiKT/Wxiuf+3lbepXg/le2pG6yn0zrHbqSGh2m/vsJZpDeDwxVnhHIxYOa5JjPct6SfMOk4QeJnpv19xW3dh3F/bJKeiH2hwAgugfEmOAq64oqcKfd8n7hrnccgN9AoNbnj1BuQTzXaziWUCA0lKE2tenTTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1765056219;
	bh=h6Mvj1tjJt5Aecn/JqiAH08BkaQkrNGrJ8dYOtew9IA=;
	h=Subject:From:To:Date:From;
	b=aQSqp4NS9P0qiUjCW9l4aB3TvdL8LCd1tTRCnkhpOXPRO5pdEKo2WetGSydRZY/pi
	 oS6gSGbD4rtFDkQj1TTIYG4ZXg1DQELotzJJIKy11ZsWa5FcV+M1Ok4vWUXvkrOSSp
	 bVOENaFqtUv3wFtnOvwIRgOQ7DxWbg0sMKyKftek=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ADB91C4CEF5
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:23:38 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B9DD63808200
	for <linux-kernel-announce@vger.kernel.org>; Sat,  6 Dec 2025 21:20:36 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.15.197 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sat, 06 Dec 2025 21:20:35 +0000
Message-Id: <20251206212035.release-5.15.197@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.15.197
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.197.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.197.xz

Linux kernel version 5.15.197 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.197.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.15.197.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.15.197.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.15.197/v5.15.196

