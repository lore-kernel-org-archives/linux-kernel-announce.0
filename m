Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29369330B01
	for <linux-kernel-announce@vger.kernel.org>; Sun, 28 Jun 2026 19:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782674359; cv=none; b=Pt88/2kjQM7gQriXDqSb/7EdWXYEoW0+PwQME2R4nzo3lvTUb6JXkxY8IxVjHzJUzYlmZX7bPM7bj+VaiU6YN/5yUzC3mmH8Veb7V+/Rf/jvHikT9Z7EbSW+pWOrz/AbtAo0GaDI5cyOaalXuikfVa1vdWuhsKvLWpPyVcjWGlA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782674359; c=relaxed/simple;
	bh=5SnCgoVSJfskfJZu3yOSuiagTU+ipLvU82H3VXO3sZA=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=H4kXd3tDkSlI6R6oWedQLEXOGOrNH8goC50ZjbhedMkt+F2HqG6UAIr+c7jQ/jT2ruUfzrXCvd4ITvyJ4hyjySf7L3DrMYu3IyJoBuDmfL2jzrx3f0rv5d3D6QXQhy1u8PXcGLd5rtdC343Qh1DUIoloWtt96WK2feJgg6XOql4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1782674359;
	bh=5SnCgoVSJfskfJZu3yOSuiagTU+ipLvU82H3VXO3sZA=;
	h=Subject:From:To:Date:From;
	b=ut2FBbT31vymNVxmftetyppEnc8EEqdyqXjiZ/+kg2dQymV9LMOhA+VX9UHIw8z+d
	 8x7d5tBpSpTI94oW7wF5xfqklKazfTnLZfWB5xaa22pyyvQWFVcFVU9z8+RLMxyXgo
	 HvqgsX6Nj9T96advfO2hTscuU/G1F1dSn4/9M6qo=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C6D7E1F000E9
	for <linux-kernel-announce@vger.kernel.org>; Sun, 28 Jun 2026 19:19:17 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 1C752393847E
	for <linux-kernel-announce@vger.kernel.org>; Sun, 28 Jun 2026 19:18:56 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 7.2-rc1 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 28 Jun 2026 19:18:54 +0000
Message-Id: <20260628191854.release-7.2-rc1@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 7.2-rc1
X-Linux-Kernel-Full-URL: https://git.kernel.org/torvalds/t/linux-7.2-rc1.tar.gz
X-Linux-Kernel-Patch-URL: https://git.kernel.org/torvalds/p/v7.2-rc1/v7.1

Linux kernel version 7.2-rc1 is now available:

Full source:    https://git.kernel.org/torvalds/t/linux-7.2-rc1.tar.gz
Patch:          https://git.kernel.org/torvalds/p/v7.2-rc1/v7.1

You can view the summary of the changes at the following URL:
https://git.kernel.org/torvalds/ds/v7.2-rc1/v7.1

