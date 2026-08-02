Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62BED2F1FEC
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Aug 2026 23:41:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785714098; cv=none; b=E368S7jf1qt2KKCivLcsqHcGFk88UQQiIvDt50V49Fwpn9WdZTqGFUDwUNOl8lDyPoznVTV3yraHoefDj95erHWNRqxxWYbmrAvKCascUW7W1yetXNnzQhGwoyooda6pE4nVbs9SsQoLUE5tm8RgcLcjweHaSYMpOap+Em0xT2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785714098; c=relaxed/simple;
	bh=pZPmW6BLR0UM63lavtpKJTTXNEuLHiES3ofUd847AV8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=V2Lo2WuBnf31TyLsfRDhHT1yEn5assgrmXpxTkaO4zJMjHz1X34NwYsBABp02RJVIiUZoichhLaB42uobmRTYOuvhGU8E6CjHrqB9BSSgPAIbf0FxZViNDzU0EG8uhGlhDVQ3PAqu80WfcRXk3Q7cyM4odF6k7PBLLxS3V404hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1785714098;
	bh=pZPmW6BLR0UM63lavtpKJTTXNEuLHiES3ofUd847AV8=;
	h=Subject:From:To:Date:From;
	b=ES+5HAc4e1vQEJ5uWXKE617Zm2o1+VQwDNitl8TVTssAdKhQPV9hwDCs1ZQl4aNUU
	 MaExptStvbePPxdv898eknxiQ5KssIwHGAZjwEsOERf6Iqy+MpvbSKY8Abh9KW8ZcL
	 y/6V4VLfnZXkVp7jm9NzBEdi1ttWC6t3RlQQlnNI=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFCFA1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Aug 2026 23:41:36 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 962803809A3D
	for <linux-kernel-announce@vger.kernel.org>; Sun,  2 Aug 2026 23:40:59 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2-rc6 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 02 Aug 2026 23:40:58 +0000
Message-Id: <20260802234058.release-7.2-rc6@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2-rc6
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.2-rc6.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.2-rc6/v7.1

Linux kernel version 7.2-rc6 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.2-rc6.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.2-rc6/v7.1

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.2-rc6/v7.2-rc5

