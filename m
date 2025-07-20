Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76372173
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Jul 2025 22:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753051999; cv=none; b=VubV09PFUIgAF/l+7imZOfZP//0GHBuMvGXOncJCaXZhxWNjfvEWsYiOpWSYYaySuMj7T/VFDo0OqPtyMfbhySR7M5TtmrpwmM0dpT+NK+CwyvVOSORuOAgP+dPELVK+/lVP5YPbLb+9CTohvfSQW8BTkUvuN0LcH2cac80SwzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753051999; c=relaxed/simple;
	bh=wV2Ao8iNEeNLFFjoDXNBIGoC7ninrtNZvXf20Am7Kx0=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=m9m9yaj+gzm8ngjnxFBCCPKQaK8t5fbKu1ZX6C4dkSdsBUfJ0XD1wPx9NPJIGgJOZn5TdjnpnkrWJ6i7Qk3A+wsYQy4c89ymFViHdub4msWSOcqU3bOn31+Hq4URGwxElhRN89DDozl0XgoVHajoM/S6Xo4WVZUBVvFsatuOWJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1753051999;
	bh=wV2Ao8iNEeNLFFjoDXNBIGoC7ninrtNZvXf20Am7Kx0=;
	h=Subject:From:To:Date:From;
	b=mXcCPX3lqzBZZDQ+cOeg1L8sudJKPJQ/SDRLTiFfixtj2kQd3QctV65BiHcSfnq+J
	 JrbCZsfFXGa6GZ09ZtjAlNZgYr7hudghosFKT+ggTANWfK0kP+KyX5ilP+IbrWLTp4
	 lcA3hB7Z7PNBcrTOjr4Avwwp81LepdhK6wF/M8XI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19AC3C4CEE7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Jul 2025 22:53:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 37C7A383BF5B
	for <linux-kernel-announce@vger.kernel.org>; Sun, 20 Jul 2025 22:53:39 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.16-rc7 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 20 Jul 2025 22:53:37 +0000
Message-Id: <20250720225337.release-6.16-rc7@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.16-rc7
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-6.16-rc7.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v6.16-rc7/v6.15

Linux kernel version 6.16-rc7 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-6.16-rc7.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v6.16-rc7/v6.15

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v6.16-rc7/v6.16-rc6

