Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D74F84562BC
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787835396; cv=none; b=YPUX+j4xQzngPTkyOzHRLO1NJf6/FUZmf4RIzDwwDzUA58bN+BBtFVa7aow8u3GzQ6abGutbxLJcUjLyaiXMfHxhsvs6zb5m52YGW4B9cU078sYOgZpKEhfuo3SQCu6ek569sNf/f3BMMs5MHTnx4n3JaIwqf9tuilVMSyGjYd0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787835396; c=relaxed/simple;
	bh=cqwEIRrmzkb9q5UrTkmE1U5rjeDsLaSbIckgLbUYJIg=;
	h=Content-Type:MIME-Version:Subject:From:To:Date:Message-Id; b=LrfpN68ZvxzeYW72KYVwUJIKbNnbHiSQKjG1k12jOgishd1hYGfwSLMSD6vHvTfjfXQlk/TnS/MyOoNG6buphU9y0zKWhYBAiHgzhbHakChC66H52fW/RHR+PQ1vdPaTTXzX0OT6vDNxCi0HzglAuqdwI7o37jHjBX94tPj0qog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linux.kernel.org;
	s=subspace; t=1787835396;
	bh=cqwEIRrmzkb9q5UrTkmE1U5rjeDsLaSbIckgLbUYJIg=;
	h=Subject:From:To:Date:From;
	b=Fb2+VF9rzYiVt14oflkuwODMU2huFaxCnuCkaHqPuZyTz8cU+si0Conl0wysXZzMh
	 USFpo3tGNESK2ZOUy0eoe0LIMr8OgcnD42KW5ImI4qmBaam5EEikw+4YCuIa6w94/5
	 Ta27OiPXHy3CmzXLkpCatrJfCDk3q03NJX4+Nd/0=
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 382501F00A3A
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:56:28 +0000 (UTC)
Received: from [10.30.226.235] (localhost [IPv6:::1])
	by aws-us-west-2-korg-oddjob-rhel9-1.codeaurora.org (Postfix) with ESMTP id 198523809A24
	for <linux-kernel-announce@vger.kernel.org>; Thu, 27 Aug 2026 12:55:35 +0000 (UTC)
Content-Type: text/plain; charset="us-ascii"
Precedence: bulk
X-Mailing-List: linux-kernel-announce@vger.kernel.org
List-Id: <linux-kernel-announce.vger.kernel.org>
List-Subscribe: <mailto:linux-kernel-announce+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:linux-kernel-announce+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Subject: Linux kernel 6.6.154 released
From: Linux Kernel Distribution System <kdist@linux.kernel.org>
To: linux-kernel-announce@vger.kernel.org
Date: Thu, 27 Aug 2026 12:55:33 +0000
Message-Id: <20260827125533.release-6.6.154@kdist.linux.kernel.org>
X-Linux-Kernel-Version: 6.6.154
X-Linux-Kernel-Full-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.154.tar.xz
X-Linux-Kernel-Patch-URL: https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.154.xz

Linux kernel version 6.6.154 is now available:

Full source:    https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.154.tar.xz
Patch:          https://cdn.kernel.org/pub/linux/kernel/v6.x/patch-6.6.154.xz
PGP Signature:  https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.6.154.tar.sign

You can view the summary of the changes at the following URL:
https://git.kernel.org/stable/ds/v6.6.154/v6.6.153

