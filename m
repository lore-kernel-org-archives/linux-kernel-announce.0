Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=100.103.45.18
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792573223;
	b=KR7lWlCjFA/pE6OrvBm2TUTNB28vXr6yX9X1BCICPQW+vxc8MM6klvBjYlQzxa1WJUMY
	 79uk8V7+76l3e6l2GKUCze3figN78uJ57ZpoCXfKq8tav+8eMxMga+XUXlMnX7/YQm6xm
	 s3DCkmhVANC7XOqKsFiKxxOi9FiyYU+oo4zOTzEYoKsdJn+Qmo9V2pYk0iT9EoQRvvgyS
	 Kb1IVawvCAEB40nDfW+SmgAhstKaaUmw5sCyxrqdsd6ijbqQEzkyW7aVgFsutQhbFKz8a
	 TkE+8aL7ReEGT1XduchcVHWWT8jtdb5dMvf5hicy44BwHpn2QgQ7yhE6jVSzdYZDthQ==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792573223;
	h=DKIM-Signature:Received:Received:Content-Type:MIME-Version:
	 Content-Transfer-Encoding:Subject:From:To:Date:Message-Id:
	 X-Linux-Kernel-Version:X-Linux-Kernel-Full-URL:
	 X-Linux-Kernel-Patch-URL;
	bh=8cZ9PGuYwjsYYOlUIH7D+/i+YVTN+enOCUOwdcRN9jU=;
	b=iCdvMDc5ieyyCMV96aHlzs7MH46GgLxb+D2+c2rcFmunxdNRKJGP1WLRVeT0/jtKwuPU
	 wDJN4DIeI6+CeeRFFoykjQxGwqYAa/W2xWQFWvRMfazbla0UomHGLbC+b2CGG9KRftxAp
	 UuTlX9gp2lo7oYVkHClqZZ0xPiRNwv0J0L3RMZ3gTW8M/NWWLw7TtPrvpUYkaTCpKmtJ+
	 9ULavv6LD/aVtWvVY9cXJOaAXcTy2V6YpNI6oEXCVpjLmUjv3GifSzkXWzPYzvHQteXl8
	 3bdU+ifdEPEW4PGcWw3cqD5QzjBDnQC6YJrMR9Amg8y431dAdDyayFjdtxJzqPEjqkg==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	arc=none smtp.remote-ip=100.103.45.18
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBE3606A31B
	for <linux-kernel-announce@vger.kernel.org>; Wed, 21 Oct 2026 09:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.kernel.org;
	s=subspace20261015; t=1792573223;
	bh=8cZ9PGuYwjsYYOlUIH7D+/i+YVTN+enOCUOwdcRN9jU=;
	h=Subject:From:To:Date;
	b=kWXBQNrlkB+bdVOQ/rLe58gFg1LRorf902ThziFNuVFEb/yZIEVgqROEWhAQAHtF1
	 gj9Fixi3CjcIf8iHZHfa5dqfm5GybpTxhxfdJPZvYnWTyTZgaiBcikmnVvo4ZWc1Ik
	 3+uVpAPuUvkbJ5fjoRWsqcC8k6r4SB/z9nEDAxahFjgL1gAMtetASCsl1iTVX0eK0k
	 2mF8rfDwxUubuWdZpOgpsdjat18xt42TjTlE4GFMmPbT+3d5ciYqk31KPEHIaCGKIi
	 biwFv8FkKZUXZ1Ul6fFMC4JMlafXBkSGMxiQ9nlvFvbIoTOwV5oOa5cQH6HHiY4Dxq
	 6DMp7i0CTyn0Q==
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB9751F000C9
	for <linux-kernel-announce@vger.kernel.org>; Wed, 21 Oct 2026 09:00:22 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id B47C03809A12
	for <linux-kernel-announce@vger.kernel.org>; Wed, 21 Oct 2026 09:00:22 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Post: <mailto:linux-kernel-announce@vger.kernel.org>
List-Help: <mailto:linux-kernel-announce+help@vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
List-Owner: <mailto:linux-kernel-announce+owner@vger.kernel.org>
Precedence: list
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2.12 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Wed, 21 Oct 2026 09:00:21 +0000
Message-Id: <20261021090021.release-7.2.12@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2.12
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.12.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.12.xz

Linux kernel version 7.2.12 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.12.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v7.x/patch-7.2.12.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v7.x/linux-7.2.12.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v7.2.12/v7.2.11

