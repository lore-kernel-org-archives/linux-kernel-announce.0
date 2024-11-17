Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304071D86E4
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731853535; cv=none; b=UFcjzvZzT7IV0FohXSYa12bPXUu1JrwkNM1nirWgv5HDi8DpfBandXSwjjKtlFc/wA09Ix/xTRTIMcmRjQwMFLE7nOPNU2dC21vVPbNKFcsEMxU+vRo+tK+Rb4KY5gB7j+/q+0EkVlBauND77dAK89TYUL+Hogpjk+GyfRmuDSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731853535; c=relaxed/simple;
	bh=/rw9uKlhBzqbLotUa1DcweUAsezJBoMnQXUKQhCgYw8=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=swlvNA5Hx69KSnojqA+U4PAevrEZ4b05Hp23kSr1ZZ5lNdEZOR4/RjhoFWyBDHyZGq9Z4rjqwbkiPlUTnmYimSlMQvDu2v0VgDFVLUZaPP2WLIUNmiVF6kzf/lpiBIKetMH17+mhvUanExy7rwvvM4Kl9MYnjbRETkQ678IcuHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1731853535;
	bh=/rw9uKlhBzqbLotUa1DcweUAsezJBoMnQXUKQhCgYw8=;
	h=Subject:From:To:Date:From;
	b=r/E1RxFjaDdWw75wktPQ5UhgKGEZ/vjI3Fpun33jwM03VdPET3m7Rh3H3Y3iLhkjx
	 Gze0135is7qZHrWzto8NmL7M4cG9sniTkVD7wTWgE/SjuOyeNQ2tDYuie4YtieONb1
	 +SdgkhUbst7BJD0c43cFEfUfUvPVUXQ8rqiq+IRs=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D604CC4CED7
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:25:34 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 339B73809A80
	for <linux-kernel-announce@vger.kernel.org>; Sun, 17 Nov 2024 14:25:47 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 5.10.230 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Sun, 17 Nov 2024 14:25:45 +0000
Message-Id: <20241117142545.release-5.10.230@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 5.10.230
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.230.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.230.xz

Linux kernel version 5.10.230 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.230.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v5.x/patch-5.10.230.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v5.x/linux-5.10.230.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v5.10.230/v5.10.229

