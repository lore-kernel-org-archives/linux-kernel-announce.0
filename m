Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECDC7253F1A
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Jul 2025 14:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752502820; cv=none; b=hUCPYlAtBNERKBHXNzALCbKQAqQDDbRppUMrH0lMKE5/VpspO0t6BLAlOOHHnuQnvkNEUKfav4yC0t9cowW/iQyX6ohDKfTmlie+DtJfAfEX+v+t5kK98qtEhJSb+2zzJGwl3rw5RVm7c9+od9JEHk2i2pYZbV1qgjXBX2s/Hf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752502820; c=relaxed/simple;
	bh=BpIoVu3FqKxQ2mi92f/JcKqUm5Q06ivWA6v+rFHxqpA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=EkPA6kkJyeZz8ZKtwLpl5a+IE4AT0MODSFEHlmgA4IQBNwrZDxHszf/LGa6rsRW7kBLZRdzsvzoXNsyV4CMABmyD+MQYh5dTjMwfCFPnKUG2Sy9nBwsIs344VRZuHF+YZTBxSKaUeUhsAEfLL+/XU5lN2sr3/ugS9cZ8BW3RoPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1752502820;
	bh=BpIoVu3FqKxQ2mi92f/JcKqUm5Q06ivWA6v+rFHxqpA=;
	h=Subject:From:To:Date:From;
	b=G+k6We8OCwVvUEfCtOosXck7/oD2FMxjU1PMmv5J10sAE7r+rwP1Ukz5NVYOuGwfz
	 3qTTiiO/B++hxBhH9u6eK/E5P+VlnraYxa/mJRsD2PWoHmtuaqJdJbxvY9qFGUv9tj
	 vU9KREWC+RQU4aRzBTvHsOeIcrDBUVblqFHtMbj4=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A272BC4CEF8
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Jul 2025 14:20:19 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B1B28383B276
	for <linux-kernel-announce@vger.kernel.org>; Mon, 14 Jul 2025 14:20:41 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.1.145 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Mon, 14 Jul 2025 14:20:40 +0000
Message-Id: <20250714142040.release-6.1.145@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.1.145
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.145.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.145.xz

Linux kernel version 6.1.145 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.145.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.1.145.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.1.145.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.1.145/v6.1.144

