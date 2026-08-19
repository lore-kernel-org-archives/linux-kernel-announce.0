Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D2E2236E8
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 15:21:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787152883; cv=none; b=c1zNduyhhqdL40RA3BCeb/eOnwvAXfFwrAScRXBPeUDYlJ5a8hWZQ2BjqoGVJuvbpOgABMSNpq/e/+exOq6oinIalrh3yPOxbFVZWDIOoa0iNFBL2COyfbH74P69Z3bEs0C5hs9HcI901nuZPzNdWb2yY80VkL87vYGXx8T7fsI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787152883; c=relaxed/simple;
	bh=WNo45cPxaUrpYedwEH+nBOmCdpGGxhVFONoOAC9DxBw=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=q5vQNiWdOeYYnNR3/NboS0KpFjrIvy9bNWbcGp4JaVU0WhJhYY6o0X6ie2S/InKvsutVJutgROn9VrGy+nM7BorWZXq1j7EYOrn4yG96BxX9Q2no0lZgWA35IP1qFbJh38RgCT8ddxUKoWMZXY9bhxHPmRJS2HUFTPwvlZd5Bro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787152883;
	bh=WNo45cPxaUrpYedwEH+nBOmCdpGGxhVFONoOAC9DxBw=;
	h=Subject:From:To:Date:From;
	b=h9I0sPvFcDW8URTS+Chqr0pIfGKEVV8X0fE4D8L2q1NMJjzWrM7TExatWFO0lFgW7
	 Xu/pAeme6vOwZMBykmPhHyvNyoVfS398aNlwg4Ag9OXRBGVLPUK+KGy2/WsaoNpjIt
	 HfKmQ2bXxpQb3JCPwSpFzVS1yveHwMj92wBafwJo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 695CD1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 15:21:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 9631D38119DB
	for <linux-kernel-announce@vger.kernel.org>; Wed, 19 Aug 2026 15:20:34 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.265 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 19 Aug 2026 15:20:33 +0000
Message-Id: <20260819152033.release-5.10.265@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.265
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.265.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.265.xz

Linux kernel version 5.10.265 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.265.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.265.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.265.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.265/v5.10.264

